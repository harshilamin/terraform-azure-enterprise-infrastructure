# Branching and Release Strategy

`main` contains reviewed, releasable code.

Use `feature/*`, `fix/*`, `docs/*`, `chore/*`, and `release/*`.

Release process:

```bash
git tag -a v1.1.0 -m "Release v1.1.0: documentation and engineering standards"
git push origin v1.1.0
```
