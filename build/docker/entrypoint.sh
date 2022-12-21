#!/usr/bin/env sh
set -e

echo Updating server to: ${SERVER}
echo Updating base href to: ${BASE_HREF}
cat /usr/share/nginx/html/demos/mob.html.in | envsubst '${SERVER} ${BASE_HREF}' > /usr/share/nginx/html/demos/mob.html
echo Done. Lets start nginx...
