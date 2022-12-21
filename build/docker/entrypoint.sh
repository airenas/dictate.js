#!/usr/bin/env sh
set -e

echo Updating base href to ${SERVER}
cat /usr/share/nginx/html/demos/mob.html.in | envsubst '${SERVER} ${BASE_HREF}' > /usr/share/nginx/html/demos/mob.html
echo Done. Lets start nginx...
