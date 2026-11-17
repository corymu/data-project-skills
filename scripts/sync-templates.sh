#!/usr/bin/env bash
# new-data-project and adopt-data-project each ship their own templates/ so a copied skill folder works alone.
# Edit templates in new-data-project/templates, then run this to copy them to adopt-data-project.
set -euo pipefail
cd "$(dirname "$0")/../skills"
rm -rf adopt-data-project/templates
cp -R new-data-project/templates adopt-data-project/templates
echo "templates synced"
