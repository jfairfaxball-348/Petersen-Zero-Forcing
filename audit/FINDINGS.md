# Audit findings

No independent proof audit has been performed in this bootstrap session.

Bootstrap-only findings:

- both preserved checksum manifests passed before integration;
- the certificate and finite numerical baseline were reproduced;
- no computational discrepancy was found in counts, ranges, maxima, or certificate hashes;
- the imported single-process Python extension verifier was slow enough in this sandbox to hit the execution wrapper after completing through `n=26`; running the same imported reference scan in fresh per-`n` processes completed `n=13,...,30` and reproduced all structural results. The repository's baseline entry point uses that equivalent fresh-process orchestration.

These are not mathematical proof findings. PROOF remains open.
