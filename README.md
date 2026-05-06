# zenith-move-search-flow

`zenith-move-search-flow` keeps a focused Elixir implementation around chess and game engines. The project goal is to build an Elixir toolkit that studies search behavior through append-only fixtures, with checkpoint recovery checks and bounded memory input sets.

## Use Case

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how position pressure and search width should influence a review result.

## Zenith Move Search Flow Review Notes

For a quick review, compare `endgame risk` with `position pressure` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/zenith-move-search-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `endgame risk` and `position pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Elixir path is deliberately direct, with fixtures doing most of the explaining.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The check exercises the source code and the review fixture. `recovery` is the high score at 249; `baseline` is the low score at 140.

## Future Work

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
