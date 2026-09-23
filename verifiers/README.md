# Verification programs

- `verify_certificate.cpp` is the imported standalone C++ certificate checker.
- `verify_certificate.py` is the independent Python certificate checker, integrated with an explicit certificate path.
- `finite_reference.py` is an unchanged copy of the pilot's supplied set-based finite verifier implementation.
- `verify_finite.py` orchestrates one fresh Python process per `n` so all 18 complete reduced scans can be reproduced reliably while preserving `finite_reference.py` unchanged.

These checks validate finite evidence. They do not by themselves prove the projection, lifting, merging, first-force reduction, or theorem assembly arguments.
