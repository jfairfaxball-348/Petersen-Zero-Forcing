# Discovery and producer programs

These programs generate/search candidate evidence; they are not trusted checkers.

- `cluster_classify.py` discovers exact connected closures on the infinite strip up to weight 7.
- `export_certificate.py` converts discovery data into a merge certificate.
- `petersen_screen_extended.cpp` performs the bounded cyclic reduced seven-seed search for exactly `n=13,...,30`.

The original byte-for-byte versions are preserved inside `data/pilot/original/Petersen_Pilot_Results.zip`. Integrated copies may have path/CLI repairs only. Verification belongs in `verifiers/`.
