#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
skills_dir="${CODEX_HOME:-$HOME/.codex}/skills"

mkdir -p "$skills_dir"

for src in "$root"/skills/*/; do
    name="$(basename "$src")"
    if [ -d "$skills_dir/$name" ]; then
        echo "更新已有技能: $name"
        mkdir -p "$skills_dir/$name"
        cp -R "$src". "$skills_dir/$name/"
    else
        echo "安装技能: $name"
        cp -R "$src" "$skills_dir/$name"
    fi
done

echo "完成，已安装到 $skills_dir"
