# Enterprise Azure Landing Zone Reference Architecture

## Release v2.0.4 — MkDocs Documentation Site

This patch release adds a browsable documentation website powered by MkDocs and GitHub Pages.

### Added

- MkDocs Material configuration
- Documentation homepage
- Structured navigation
- Architecture, CI/CD, security, operations, testing, and portfolio sections
- GitHub Pages deployment workflow
- Python documentation dependencies
- Local documentation preview instructions
- v2.0.4 release checklist

## Safe release scope

This release does not modify:

- Terraform modules
- Dev, QA, or Prod environment roots
- Provider or backend configuration
- Azure resource definitions

## Preview locally

```powershell
python -m pip install -r requirements-docs.txt
mkdocs serve
```

Then open:

```text
http://127.0.0.1:8000
```

## Roadmap

- [x] v2.0.0 Integrated portfolio release
- [x] v2.0.1 Repository governance
- [x] v2.0.2 Local quality and security tooling
- [x] v2.0.3 Native Terraform tests and examples
- [x] v2.0.4 MkDocs and GitHub Pages
- [ ] v2.0.5 Release automation and final polish

Maintained by [Harshil Amin](https://github.com/harshilamin).
