grep -rl '0\.0\.4' .  --exclude-dir={"Build","libs","Pods",".git"} --exclude={"Podfile.lock","CHANGELOG.md","update-version.sh"} | xargs sed -i.bak 's/0\.0\.4/0\.0\.5/g';

find . -type f -name '*.bak' -delete