#!/bin/sh

echo "Generating configuration files..."

autoconf
autoheader
# evil
rm -rf autom4te.cache
if [ $# -ge 1 ]; then
    ./configure "$@"
fi
