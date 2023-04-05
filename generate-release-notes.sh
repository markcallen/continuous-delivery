#!/bin/bash
#

REPO=$(git config --get remote.origin.url | sed -n -e 's/^.*:\(.*\).git/\1/p')

LAST=$(curl -s -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/${REPO}/releases | jq -r .[0].tag_name)

LATEST=$1

echo **Full Changelog**: https://github.com/${REPO}/compare/${LAST}...${LATEST}

git log --pretty="- %s" ${LAST}..HEAD
