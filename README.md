## Advent of Prompt workspace

This repository contains my notes and solutions for daily puzzles from the Advent of Prompt challenge. See the dashboard: [craftingaiprompts.org → Advent of Prompt](https://craftingaiprompts.org/dashboard/advent-of-prompt).

### Directory layout
- **Per-year and per-day**: `YEAR/dayNN/` (e.g., `2025/day14`)
- **Prompt file**: each day starts with a `prompt.md` where the puzzle text can be pasted
- Additional files (solutions, assets, experiments) live alongside `prompt.md`

### Create a new day with `new-day.sh`
The `new-day.sh` script streamlines setting up a new day folder.

- **What it does**
  - Prompts for Year and Day (defaults to the current year/day)
  - Creates `YEAR/dayNN/` (day is zero-padded to two digits)
  - Ensures an empty `prompt.md` exists in that folder (won’t overwrite existing content)

- **Requirements**
  - Bash. On Windows, use Git Bash (e.g., `C:\Program Files\Git\bin\bash.exe`).

- **Usage**

```bash
# From the repo root
bash new-day.sh

# Or make it executable once:
chmod +x new-day.sh
./new-day.sh
```

- **Example session**

```text
Year [2025]:
Day [07]:
Ready: 2025/day07/prompt.md
```


