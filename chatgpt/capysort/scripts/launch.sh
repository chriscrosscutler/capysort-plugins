#!/bin/sh
# Starts Capysort's MCP helper, sift-mcp, which ships inside the Capysort app.
# The helper holds no data and opens no network connections: it passes each
# tool call to the app running on this Mac over a local socket, and the app
# decides what to share. This script only finds the app and runs the helper.
set -eu

helper=Contents/MacOS/sift-mcp

run() {
  if [ -x "$1/$helper" ]; then exec "$1/$helper"; fi
}

# The usual places first, the website build before the App Store one.
for dir in /Applications "$HOME/Applications"; do
  for name in "Capysort Direct" Capysort "Sift Direct" Sift; do
    run "$dir/$name.app"
  done
done

# Anywhere else Spotlight knows of, by bundle ID.
for id in com.chriscutler.sift.direct com.chriscutler.sift; do
  app=$(mdfind "kMDItemCFBundleIdentifier == '$id'" 2>/dev/null | head -n 1)
  if [ -n "$app" ]; then run "$app"; fi
done

echo "Capysort isn't installed on this Mac. Get it at https://capysort.com, open it once, then try again." >&2
exit 1
