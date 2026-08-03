# Line-Ending Policy

The repository uses `.gitattributes` to keep infrastructure and workflow files consistent across Windows and Linux.

- Terraform, YAML, JSON, Markdown, and Bash use LF.
- PowerShell uses CRLF.
- Binary images and ZIP files are not normalized.

Do not run `git add --renormalize .` as part of this release unless you intentionally want a large line-ending-only pull request.
