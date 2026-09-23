#!/usr/bin/env python3
"""Verify the preserved pilot archive manifests without modifying the archive."""
from __future__ import annotations

import hashlib
from pathlib import Path
import sys
import zipfile

ROOT = Path(__file__).resolve().parents[1]
ZIP_PATH = ROOT / "data/pilot/original/Petersen_Pilot_Results.zip"
REPORT_PATH = ROOT / "data/pilot/original/Petersen_Pilot_Report.md"
ROOT_MANIFEST_COPY = ROOT / "data/pilot/ARCHIVE_SHA256SUMS.txt"
INPUT_MANIFEST_COPY = ROOT / "data/pilot/INPUT_SHA256SUMS.txt"


def fail(message: str) -> None:
    print(f"BASELINE FAILURE: {message}", file=sys.stderr)
    raise SystemExit(1)


def parse_manifest(raw: bytes, label: str) -> list[tuple[str, str]]:
    rows: list[tuple[str, str]] = []
    for lineno, raw_line in enumerate(raw.decode("utf-8").splitlines(), 1):
        line = raw_line.strip()
        if not line:
            continue
        try:
            digest, name = line.split(None, 1)
        except ValueError:
            fail(f"malformed {label} line {lineno}")
        if len(digest) != 64 or any(c not in "0123456789abcdef" for c in digest):
            fail(f"invalid SHA-256 in {label} line {lineno}")
        rows.append((digest, name.strip()))
    return rows


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def main() -> None:
    try:
        with zipfile.ZipFile(ZIP_PATH, "r") as archive:
            names = set(archive.namelist())
            root_manifest = archive.read("SHA256SUMS.txt")
            input_manifest = archive.read("input/SHA256SUMS.txt")

            if root_manifest != ROOT_MANIFEST_COPY.read_bytes():
                fail("preserved archive manifest copy differs from ZIP")
            if input_manifest != INPUT_MANIFEST_COPY.read_bytes():
                fail("preserved input manifest copy differs from ZIP")
            if archive.read("Petersen_Pilot_Report.md") != REPORT_PATH.read_bytes():
                fail("standalone report differs from report inside preserved ZIP")

            for digest, name in parse_manifest(root_manifest, "archive SHA256SUMS.txt"):
                if name not in names:
                    fail(f"archive manifest entry is missing: {name}")
                if sha256(archive.read(name)) != digest:
                    fail(f"archive manifest hash mismatch: {name}")

            for digest, name in parse_manifest(input_manifest, "input/SHA256SUMS.txt"):
                path = f"input/{name}"
                if path not in names:
                    fail(f"input manifest entry is missing: {path}")
                if sha256(archive.read(path)) != digest:
                    fail(f"input manifest hash mismatch: {path}")
    except (OSError, zipfile.BadZipFile, KeyError, UnicodeDecodeError) as exc:
        fail(f"cannot verify preserved pilot archive: {exc}")

    print("Preserved pilot archive manifests: OK")


if __name__ == "__main__":
    main()
