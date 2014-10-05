#!/bin/bash

cp web-quick-starter/web.sh web-quick-starter/web
chmod 555 web-quick-starter/web
mv web-quick-starter/web /usr/local/bin
rm -rf web-quick-starter

echo "------------------------------------------------------------------------------"
echo "Success! Web quick starter is installed. Type 'web help' to get started"
echo "------------------------------------------------------------------------------"
