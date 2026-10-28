# Tool usage

When relevant, use these CLI tools instead of their default alternatives:

- `rg` (ripgrep) instead of `grep` for string searching
- `fd` (fd-find) instead of `find` for finding files under certain conditions
- `rga` (ripgrep-all) to search for strings in files that do not just contain plain text

When writing or executing Python code, use `uv`:

- `uv venv` to create a virtual environment, which should be activated immediately after creation
- `uv run <path_to_script>` to run Python scripts
- Define a `pyproject.toml` file appropriate for the project at hand. A command line tool should eventually be installable with `uv tool install <git_repository_url>`.

# Software development

## Project organization

- Adhere to directory and repository structuring conventions corresponding to the programming language and tools being used
- Keep helper scripts for the project in their own subdirectory called "scripts"
- Maintain `./docs/PROJECT.md` in a software project's repository, with its contents describing the project's purpose, architecture, and features. Feature descriptions should include concise descriptions on how the feature works under the hood.

# Version control

- When starting a new project, use `git init` to create a Git repository
- Do not `git commit` unless explicitly instructed to do so
