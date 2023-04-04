#!/bin/bash

LAST=$(curl -s -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/markcallen/continuous-delivery/releases | jq -r .[0].tag_name)

LATEST=$1

echo **Full Changelog**: https://github.com/markcallen/continuous-delivery/compare/${LAST}...${LATEST}

git log --pretty="- %s" ${LAST}..HEAD
