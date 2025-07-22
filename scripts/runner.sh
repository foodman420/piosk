#!/bin/bash

# Read URLs from config
URLS=$(jq -r '.urls | map(.url) | join(" ")' /opt/piosk/config.json)

# Launch Firefox in kiosk mode with URLs
firefox \
  --kiosk $URLS \
  --no-remote \
  --setDefaultBrowser \
  --new-window
