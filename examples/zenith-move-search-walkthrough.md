# Zenith Move Search Flow Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 140 | ship |
| stress | move ordering | 236 | ship |
| edge | search width | 207 | ship |
| recovery | endgame risk | 249 | ship |
| stale | position pressure | 206 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`recovery` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
