#!/usr/bin/env bash
# Usage: $0 [remote]
# Get the name of the remote HEAD for the named remote (default: origin).

if [ -n "${DEFAULT_BRANCH}" ]; then
    echo "${DEFAULT_BRANCH}"
    exit 0
fi

echo "DEFAULT-${DEFAULT_BRANCH}"
origin="${1:-${GIT_REMOTE:-origin}}"
echo "BRENDAN-${GIT_REMOTE}-$origin"
branch=$(git rev-parse --abbrev-ref "$origin/HEAD" 2>/dev/null)
if [[ "$branch" == "$origin/HEAD" ]]; then
    echo "ASDF"
    # If $origin doesn't exist, then the above rev-parse will fail, but that is
    # OK.  We can let git remote report the error.
    set -e
    git remote set-head -a "$origin" 2>&1 # 2>/dev/null 1>&2
    branch=$(git rev-parse --abbrev-ref "$origin/HEAD" 2>/dev/null)
    echo "MMMM"
fi
echo "${branch##*/}"
