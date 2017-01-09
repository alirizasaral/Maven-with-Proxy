#!/bin/bash
/usr/local/bin/mvn-entrypoint.sh
env | grep -q PROXY_
if [ $? -eq 1 ]; then
  echo "Proxy settings not found"
  sed '/<proxies>/,/<\/proxies>/d' < /tmp/settings.template.xml > /root/.m2/settings.xml
else
  echo "Proxy settings found"
  env | grep PROXY_ | /tmp/replace_by_env.sh  /tmp/settings.template.xml | sed '/\$PROXY_/d' | sed '/\$NO_PROXY/d' > /root/.m2/settings.xml
fi
exec "$@"