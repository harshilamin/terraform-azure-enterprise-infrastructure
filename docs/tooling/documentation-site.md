# Documentation Site

## Local preview

```powershell
python -m pip install -r requirements-docs.txt
mkdocs serve
```

## Production build

```powershell
mkdocs build --strict
```

The strict build fails when navigation references are invalid or Markdown warnings occur.

## GitHub Pages

After merging this release:

1. Open repository **Settings**.
2. Select **Pages**.
3. Set the source to **GitHub Actions**.
4. Run the **Publish Documentation** workflow.
5. Verify the published site.

## Maintenance

When adding documentation:

- Add the page under `docs/`.
- Add it to `mkdocs.yml`.
- Use relative Markdown links.
- Run `mkdocs build --strict`.
- Keep terminology aligned with the Terraform repository.
