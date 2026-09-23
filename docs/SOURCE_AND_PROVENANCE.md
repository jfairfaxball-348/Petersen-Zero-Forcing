# Source, scope, provenance, and licensing

## Mathematical target

The imported pilot identifies the target as Conjecture 5 in Arnav Krishnan's July 2026 preprint *A correction to the Zero Forcing Number of the Generalized Petersen Graphs P(n,3)* (`arXiv:2607.19412v1`). The pilot reports that Proposition 4 supplies the eight-vertex upper bound and the conjecture asks for the uniform lower bound. It also cites a 2020 article whose Theorem 3.6 does not justify excluding seven-vertex starting sets, and notes the correction's `n=12` failure.

These literature-status statements are imported from the pilot and are **not refreshed by this bootstrap session**. A novelty refresh belongs to the later PAPER gate.

## Imported evidence

`data/pilot/original/Petersen_Pilot_Results.zip` is an unchanged copy of the Library artifact used for this bootstrap. Its SHA-256 is:

`7fdc0a1cd7ed326fa51c01ad3343924b3645e1da7674fb67e67d839f32b81977`.

The separately supplied report is byte-identical to the report inside that ZIP and has SHA-256:

`586e0f757446a2d7cd95df198b7f3838a9c9774a6971de81b417a0d992a4671e`.

The archive's own `SHA256SUMS.txt` and the nested input checksum manifest both passed before any reorganisation. Their unchanged text is preserved as `data/pilot/ARCHIVE_SHA256SUMS.txt` and `data/pilot/INPUT_SHA256SUMS.txt`.

`PILOT_STATUS.json` contains an `input_zip_sha256` value for an earlier pilot input bundle. That value is provenance inside the imported pilot and must not be confused with the SHA-256 of the present `Petersen_Pilot_Results.zip` above.

## Role separation

- original immutable evidence: `data/pilot/original/`;
- imported status/human-readable shape material: `data/pilot/`;
- certificate trusted only after direct checks: `certificates/`;
- discovery / production: `research/`;
- checking: `verifiers/`;
- bootstrap outputs: `results/bootstrap/`.

## Authorship and licensing

The archive contains no `LICENSE` file and no explicit licence grant was found in its text sources. This repository therefore does **not** infer or copy TreeStack's Apache-2.0 licence. No project-wide licence is asserted by this bootstrap. The mathematical conjecture/source is attributed to the cited literature; the pilot evidence is recorded as imported session material. A later maintainer may add a licence only after confirming the intended rights for both new repository material and imported code/evidence.
