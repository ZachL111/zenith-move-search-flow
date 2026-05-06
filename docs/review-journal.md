# Review Journal

The review surface for `zenith-move-search-flow` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 140, lane `ship`
- `stress`: `move ordering`, score 236, lane `ship`
- `edge`: `search width`, score 207, lane `ship`
- `recovery`: `endgame risk`, score 249, lane `ship`
- `stale`: `position pressure`, score 206, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
