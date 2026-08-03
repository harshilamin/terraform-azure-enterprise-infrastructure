# Applying v2.1.0

This ZIP is a **release overlay**, not a replacement for the repository.

## Safe scope

It must not modify files under:

```text
modules/
environments/
```

## Apply

```powershell
git checkout main
git pull origin main
git checkout -b chore/release-2.1.0-final
```

Extract the ZIP into a temporary folder, then copy the inner contents into the repository.

## Verify scope before committing

```powershell
git status
git diff --stat
```

Do not continue if any file under `modules/` or `environments/` changes.

## Validate

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\scriptsinal-readiness.ps1
```

## Commit

```powershell
git add .
git commit -m "chore: finalize enterprise Azure infrastructure portfolio"
git push -u origin chore/release-2.1.0-final
```
