#!/usr/bin/env bash
set -euo pipefail

# Defaults: current year and current day
defaultYear="$(date +%Y)"
defaultDay="$(date +%d)"

read -r -p "Year [${defaultYear}]: " year_input || true
year="${year_input:-$defaultYear}"

read -r -p "Day [${defaultDay}]: " day_input || true
day="${day_input:-$defaultDay}"

# Basic validation
if ! [[ "$year" =~ ^[0-9]{4}$ ]]; then
  echo "Error: year must be a 4-digit number" >&2
  exit 1
fi
if ! [[ "$day" =~ ^[0-9]+$ ]]; then
  echo "Error: day must be a positive integer" >&2
  exit 1
fi

# Normalize day to drop any leading zeros (e.g., 07 -> 7)
day="$((10#$day))"

day_padded="$(printf "%02d" "$day")"
dir="${year}/day${day_padded}"
mkdir -p "$dir"

file="${dir}/prompt.md"
touch "$file"

echo "Ready: $file"


