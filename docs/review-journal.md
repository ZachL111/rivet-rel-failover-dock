# Review Journal

The repository goal stays the same: develop a Solidity command-oriented project for failover scenarios with bounded scenario files, conflict explanations, and bounded memory input sets. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its reliability focus without claiming live deployment or external usage.

## Cases

- `baseline`: `budget pressure`, score 153, lane `ship`
- `stress`: `failure width`, score 221, lane `ship`
- `edge`: `recovery gap`, score 110, lane `watch`
- `recovery`: `runbook drift`, score 242, lane `ship`
- `stale`: `budget pressure`, score 205, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
