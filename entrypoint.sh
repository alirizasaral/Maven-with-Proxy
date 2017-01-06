#!/bin/bash
/usr/local/bin/mvn-entrypoint.sh
env | grep PROXY_ | /tmp/replace_by_env.sh  /tmp/settings.template.xml | sed '/\$PROXY_/d' | sed '/\$NO_PROXY/d' > /root/.m2/settings.xml
exec "$@"