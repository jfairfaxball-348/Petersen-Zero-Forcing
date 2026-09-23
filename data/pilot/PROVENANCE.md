# Pilot evidence provenance

The bootstrap retrieved `Petersen_Pilot_Results.zip` and `Petersen_Pilot_Report.md` from the user's file Library. The ZIP was hashed, listed, extracted without modification into a temporary workspace, and checked against its root `SHA256SUMS.txt`; every listed file passed. The nested `input/SHA256SUMS.txt` also passed. The separately supplied report had the same SHA-256 as the report inside the archive.

Only after those checks were complete were working copies placed into `certificates/`, `research/`, and `verifiers/`. The byte-for-byte original ZIP and report remain under `original/` and must not be edited.

The archive includes discovery code, certificate-export code, standalone certificate verifiers, finite-search programs, verification outputs, resource logs, and source/provenance material. Those roles remain distinct in this repository.
