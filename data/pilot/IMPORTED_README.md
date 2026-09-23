# Petersen pilot result bundle

**PILOT_POSITIVE.** Read `Petersen_Pilot_Report.md` for the precise result,
uniform proof, finite reduction, and limitations. `CLOSED_SHAPES.md` lists
the 38 certified shapes in human-readable form.

The key check needs only a C++17 compiler. From this directory:

```bash
g++ -std=c++17 -O2 -Wall -Wextra -Werror -pedantic src/verify_certificate.cpp -o verify_certificate
./verify_certificate results/merge_certificate.txt
python3 src/verify_certificate.py
```

These two verifiers check the existing certificate independently of the
discovery program. Read the projection and block-merging proof in the report
to understand why those finite checks imply the uniform result.

To rerun the cyclic extension and its independent verification:

```bash
g++ -std=c++17 -O3 -Wall -Wextra -pedantic src/petersen_screen_extended.cpp -o petersen_screen_extended
./petersen_screen_extended > results/extended_screen.json
python3 src/verify_finite_extension.py
```

This checks every n from 13 through 30. The C++ representation uses 64 bits;
keep its explicit size list within the prescribed pilot range. Python's
complete verification is slower than the C++ scan. The original supplied
verifier is imported from `input/`, and does not run its main routine here.

To reconstruct the discovery data and certificate:

```bash
python3 src/cluster_classify.py
python3 src/export_certificate.py
```

The discovery works with integer-indexed strip vertices, not with additional
cyclic graph sizes. Its closure-size guard is an abort condition, not a proof
assumption. The verifiers consume the resulting finite table, test closedness
and containment directly, and do not trust that guard or the search procedure.

The supplied selection screen can be reproduced separately in `reproduction/`
using its original source and the commands in `input/Next_Maths_Target_Audit.md`.

All computation in the completed pilot ran with per-process resource limits
of 4 GiB virtual memory and at most 600 CPU seconds, except the discovery
process, which was allowed 900 CPU seconds. The sum of those process ceilings
was 6,900 CPU seconds, below the 7,200-second pilot limit. Actual consumption
was much smaller and is recorded in `results/resource_summary.json`.

Only standard Python 3 and C++17 facilities are required. Running the commands
overwrites the corresponding result and timing files. No Lean proof, repository,
Palomar submission, or publication submission is included.
