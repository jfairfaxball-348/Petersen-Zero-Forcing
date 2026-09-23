#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD="$ROOT/.build/baseline"
fail() { echo "BASELINE FAILURE: $*" >&2; exit 1; }
command -v python3 >/dev/null || fail "python3 is required"
command -v g++ >/dev/null || fail "g++ is required"
command -v sha256sum >/dev/null || fail "sha256sum is required"
command -v timeout >/dev/null || fail "timeout is required"
rm -rf "$BUILD" && mkdir -p "$BUILD"
# 768 MiB per-process virtual-memory ceiling; the Python finite stage uses at most four workers, keeping the aggregate ceiling below 4 GiB. Overall runtime has a 10-minute wall guard.
ulimit -v 786432 || fail "could not set 768 MiB per-process virtual-memory limit"

(cd "$ROOT/data/pilot/original" && sha256sum -c SHA256SUMS.txt) || fail "preserved input hash check failed"
python3 "$ROOT/scripts/verify_preserved_archive.py" || fail "preserved archive manifest verification failed"
(cd "$ROOT/certificates" && sha256sum -c SHA256SUMS.txt) || fail "canonical certificate hash check failed"

g++ -std=c++17 -O2 -Wall -Wextra -Werror -pedantic "$ROOT/verifiers/verify_certificate.cpp" -o "$BUILD/verify_certificate" || fail "C++ certificate verifier did not compile"
timeout 600 "$BUILD/verify_certificate" "$ROOT/certificates/merge_certificate.txt" > "$BUILD/certificate_cpp.json" || fail "C++ certificate verification failed"
timeout 600 python3 "$ROOT/verifiers/verify_certificate.py" "$ROOT/certificates/merge_certificate.txt" --output "$BUILD/certificate_python.json" > "$BUILD/certificate_python.stdout" || fail "Python certificate verification failed"

g++ -std=c++17 -O3 -Wall -Wextra -pedantic "$ROOT/research/petersen_screen_extended.cpp" -o "$BUILD/petersen_screen_extended" || fail "C++ finite scanner did not compile"
timeout 600 "$BUILD/petersen_screen_extended" > "$BUILD/finite_cpp.json" || fail "C++ finite scan failed"
timeout 600 python3 "$ROOT/verifiers/verify_finite.py" --cpp-output "$BUILD/finite_cpp.json" --output "$BUILD/finite_python.json" || fail "Python independent finite scans failed"

python3 "$ROOT/scripts/check_baseline.py" "$BUILD/certificate_cpp.json" "$BUILD/certificate_python.json" "$BUILD/finite_cpp.json" "$BUILD/finite_python.json"
