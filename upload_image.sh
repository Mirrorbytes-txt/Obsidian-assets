
REPO_PATH="$HOME/Documents/Obsidian-assets"
BRANCH="main"
REPO_URL="Mirrorbytes-txt/Obsidian-assets"

cd "$REPO_PATH" || exit 1

FILE="$1"
RELATIVE_PATH="${FILE#$REPO_PATH/}"

git add "$RELATIVE_PATH"
git commit -m "Add image $RELATIVE_PATH"
git push origin $BRANCH

RAW_URL="https://raw.githubusercontent.com/$REPO_URL/$BRANCH/$RELATIVE_PATH"
echo "$RAW_URL" | xclip -selection clipboard

echo "Uploaded and copied:"
echo "$RAW_URL"
