#!/bin/bash
chromium-browser \
  $(jq -r '.urls | map(.url) | join(" ")' /opt/piosk/config.json) \
  --disable-component-update \
  --disable-infobars \
  --disable-session-crashed-bubble \
  --disable-features=AllowCrossOriginAuthPrompt,SameSiteByDefaultCookies \
  --auth-server-whitelist="csmsvr02/" \
  --auth-negotiate-delegate-whitelist="csmsvr02/" \
  --enable-auth-negotiate-port \
  --no-first-run \
  --noerrdialogs \
  --kiosk
