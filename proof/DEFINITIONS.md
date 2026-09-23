# Definitions used by the imported candidate proof

For `n >= 13`, `P(n,3)` is cubic with

\[
N(u_i)=\{u_{i-1},u_{i+1},v_i\},\qquad
N(v_i)=\{v_{i-3},v_{i+3},u_i\}
\]

(indices modulo `n`). Under the standard zero-forcing rule, a blue vertex with exactly one white neighbour forces that neighbour blue. `cl(S)` denotes the eventual blue closure of an initial set `S`.

The infinite strip `H` uses the same formulas with integer indices instead of indices modulo `n`.

A finite strip set `C` is **closed** when no vertex of `C` has exactly one neighbour outside `C`. A first force leaving such a set is therefore impossible. For these cubic graphs, this is equivalent to saying no blue vertex has exactly two blue neighbours.

The **span** of a nonempty strip set is maximum column minus minimum column. A translation shifts all column indices equally. Two strip sets **touch** if they intersect or have an edge between them.

The certificate assigns each shape a weight in `1,...,7`; weights are proof bookkeeping bounds, not minimality claims.
