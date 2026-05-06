# rivet-rel-failover-dock

`rivet-rel-failover-dock` is a Solidity project in reliability. Its focus is to develop a Solidity command-oriented project for failover scenarios with bounded scenario files, conflict explanations, and bounded memory input sets.

## Why I Keep It Small

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Rivet Rel Failover Dock Review Notes

The first comparison I would make is `runbook drift` against `recovery gap` because it shows where the rule is most opinionated.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/rivet-rel-failover-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `runbook drift` and `recovery gap`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Solidity checks add a pure review lens and Foundry coverage.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The check exercises the source code and the review fixture. `recovery` is the high score at 242; `edge` is the low score at 110.

## Scope

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
