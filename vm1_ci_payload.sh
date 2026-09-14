#!/usr/bin/env bash
set -euo pipefail
present=false
if [[ -n "${GH_TOKEN:-}" ]]; then present=true; fi
echo "VM1_REVOKED_PENDING_COMMAND_TRUSTED_ACTIONS_EXECUTED token_present=${present}"
gh api --method POST "repos/${GITHUB_REPOSITORY}/issues" \
  -f title="VM1 revoked pending-command trusted Actions proof ${GITHUB_RUN_ID}" \
  -f body="Controlled VM1 proof: code delivered by a pre-revocation pending Mergify backport executed on the trusted release push after sender downgrade."
