# `PETERSEN_MERGE_CERTIFICATE_V1` schema

The canonical certificate is `merge_certificate.txt`.

Line 1 is the magic string `PETERSEN_MERGE_CERTIFICATE_V1`.

Line 2 contains:

```text
budget shape_count merge_count
```

For this certificate these are `7 38 1591`.

The next `shape_count` lines contain

```text
shape_id weight vertex_count x_1 layer_1 ... x_m layer_m
```

with normalized integer strip coordinates and layer in `{0,1}`.

Each remaining line is a merge witness

```text
left_shape_id right_shape_id translation target_shape_id target_translation
```

asserting containment of the left shape and the translated right shape in the translated target. The standalone verifiers independently check dimensions, normalization, closedness, the span bound, singleton availability, complete touching-translation coverage, target containment, weight accounting, absence of extraneous rows, partition bounds, and the cutoff induced by maximum span.

The certificate producer is not trusted as a verifier.
