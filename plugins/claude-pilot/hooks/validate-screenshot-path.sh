#!/usr/bin/env bash
# validate-screenshot-path.sh
#
# PreToolUse hook for screenshot MCP tools.
# Ensures screenshots destined for test-screenshots/ use the required
# nested timestamp directory structure:
#   test-screenshots/{type}-YYYY-MM-DD-HH-MM/filename.ext
#
# Exit codes:
#   0 - always (hook protocol requires 0 for both allow and deny)
# Output:
#   Empty (allow) or JSON with permissionDecision:"deny" + reason

set -euo pipefail

# Read the hook input JSON from stdin
input=$(cat)

# Extract the screenshot path from tool_input.
# Puppeteer uses "path", iOS Simulator uses "output_path".
path=$(echo "$input" | python3 -c "
import sys, json
data = json.load(sys.stdin)
tool_input = data.get('tool_input', {})
print(tool_input.get('path', tool_input.get('output_path', '')))
" 2>/dev/null || echo "")

# If no path found, allow (not a screenshot call we care about)
if [ -z "$path" ]; then
  exit 0
fi

# If the path doesn't involve test-screenshots, it's not our concern — allow
if [[ "$path" != *"test-screenshots"* ]]; then
  exit 0
fi

# Validate: path must match test-screenshots/{type}-YYYY-MM-DD-HH-MM/filename.ext
# The pattern requires at least one subdirectory between test-screenshots/ and the filename.
if echo "$path" | grep -qE 'test-screenshots/.+-[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}/[^/]+\.[a-zA-Z]+$'; then
  # Correct nested structure — allow
  exit 0
fi

# Path is in test-screenshots/ but missing the required timestamp subdirectory
cat <<EOF
{
  "decision": "deny",
  "reason": "Screenshot path must use a timestamped subdirectory under test-screenshots/. Expected format: test-screenshots/{type}-YYYY-MM-DD-HH-MM/filename.ext (e.g., test-screenshots/smoke-test-2024-01-15-14-30/01-initial-load.png). Got: ${path}"
}
EOF

exit 0
