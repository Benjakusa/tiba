#!/bin/bash
set -e
cd ~ || exit

echo "Setting Up Bench..."

pip install frappe-bench
bench -v init frappe-bench --skip-assets --skip-redis-config-generation --python "$(which python)" --frappe-branch "${BASE_BRANCH}"
cd ./frappe-bench || exit

# We want to exclude strings from ERPNext translations.
echo "Get ERPNext..."
bench get-app --skip-assets --branch "${BASE_BRANCH}" erpnext

echo "Get Tiba..."
bench get-app --skip-assets healthcare "${GITHUB_WORKSPACE}"

echo "Generating POT file..."
bench generate-pot-file --app healthcare

cd ./apps/healthcare || exit

echo "Configuring git user..."
git config user.email "devs@tiba.io"
git config user.name "tiba-pr-bot"

echo "Setting the correct git remote..."
# Here, the git remote is a local file path by default. Let's change it to the upstream repo.
git remote set-url upstream https://github.com/Benjakusa/tiba.git

echo "Creating a new branch..."
isodate=$(date -u +"%Y-%m-%d")
branch_name="pot_${BASE_BRANCH}_${isodate}"
git checkout -b "${branch_name}"

echo "Committing changes..."
git add healthcare/locale/main.pot
git commit -m "chore: update POT file"

gh auth setup-git
git push -u upstream "${branch_name}"

echo "Creating a PR..."
gh pr create --fill --base "${BASE_BRANCH}" --head "${branch_name}" -R Benjakusa/tiba
