/usr/sbin/automount

if [ -z "$1" ]; then
    /bin/bash
else
    exec "$@"
fi
