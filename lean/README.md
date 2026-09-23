# Lean phase — locked

Do not create Lean source files or pin/install a toolchain until the independent PROOF gate passes. The intended later namespace is `PetersenZeroForcing`.

When unlocked, formalise the audited theorem with full quantifiers, connect executable certificate checks to the mathematical definitions, require a clean build, and audit the full transitive axiom dependencies. The final theorem may depend only on `propext`, `Classical.choice`, and `Quot.sound`; no `sorry`, added axioms, or private `native_decide` axioms are permitted. External computation must become kernel-checked evidence.
