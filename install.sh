#!/bin/bash
# Vicious Web Content - Skill Installer
# Clones the repo, packages all skills + plugin, opens dist/

set -e

REPO_URL="https://github.com/ViciousStudio-tech/vicious-web-content.git"
INSTALL_DIR="$HOME/vicious-web-content"
DIST_DIR="$INSTALL_DIR/dist"

echo ""
echo "Vicious Web Content - Skill Installer"
echo ""

# Clone or pull latest
if [ -d "$INSTALL_DIR/.git" ]; then
  echo "Repo exists - pulling latest..."
  git -C "$INSTALL_DIR" pull --quiet
else
  echo "Cloning repo..."
  git clone --quiet "$REPO_URL" "$INSTALL_DIR"
fi

echo "Repo ready at $INSTALL_DIR"
echo ""
mkdir -p "$DIST_DIR"

python3 - "$INSTALL_DIR" "$DIST_DIR" << 'PYEOF'
import sys, zipfile, re
from pathlib import Path

repo = Path(sys.argv[1])
dist = Path(sys.argv[2])
EXCLUDE = {'.DS_Store', '__pycache__', 'node_modules', 'evals'}

def skip(p):
    return any(part in EXCLUDE or part.endswith('.pyc') for part in p.parts)

def package(skill_path, label):
    if not (skill_path / 'SKILL.md').exists():
        print(f"  SKIP {label} - no SKILL.md")
        return
    out = dist / f"{skill_path.name}.skill"
    with zipfile.ZipFile(out, 'w', zipfile.ZIP_DEFLATED) as zf:
        for f in skill_path.rglob('*'):
            if not f.is_file(): continue
            rel = f.relative_to(skill_path.parent)
            if skip(rel): continue
            zf.write(f, rel)
    print(f"  OK {label} -> {out.name} ({out.stat().st_size//1024}KB)")

print("Packaging...")
for path, label in [
    (repo/'skills'/'brand-intake',        'brand-intake'),
    (repo/'skills'/'site-architecture',   'site-architecture'),
    (repo/'skills'/'content-generator',   'content-generator'),
    (repo/'skills'/'ui-annotator',        'ui-annotator'),
    (repo/'plugins'/'vicious-web-content','vicious-web-content (plugin)'),
]:
    package(path, label)
print(f"Done. Files in: {dist}")
PYEOF

echo ""
echo "Install order in Claude.ai -> Settings -> Capabilities -> Skills:"
echo "  1. brand-intake"
echo "  2. site-architecture"
echo "  3. content-generator"
echo "  4. ui-annotator"
echo "  5. vicious-web-content (plugin - last)"
echo ""

open "$DIST_DIR"
