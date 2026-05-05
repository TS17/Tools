# AGENTS.md

## Cursor Cloud specific instructions

This is a dotfiles/tools repository containing a `.bashrc` with shell aliases and helper functions for Docker, Git, and Terraform workflows. There is no application to build or run — the "product" is the `.bashrc` file itself.

### Validating changes

- **Syntax check**: `bash -n /workspace/.bashrc`
- **Source test**: `source /workspace/.bashrc` — verify it loads without errors.
- **Alias verification**: Use `type <alias>` to confirm aliases and functions are defined after sourcing.

### Structure

- `.bashrc` — all aliases and functions organized by sections: Docker, Git, Terraform.

### Notes

- No build system, package manager, or dependency files exist.
- No services to start or tests to run beyond syntax checking and sourcing the file.
