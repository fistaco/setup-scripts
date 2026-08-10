# Tool usage

When relevant, use these CLI tools instead of their default alternatives:

- `rg` (ripgrep) instead of `grep` for string searching
- `fd` (fd-find) instead of `find` for finding files under certain conditions
- `rga` (ripgrep-all) to search for strings in files that do not just contain plain text

When writing or executing Python code, use `uv`:
- `uv venv` to create a virtual environment, which should be activated immediately after creation
- `uv run <path_to_script>` to run Python scripts
