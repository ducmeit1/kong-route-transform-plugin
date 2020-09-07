#!/bin/bash

set -e

PLUGIN="kong-route-transform-plugin"
VERSION=`echo *.rockspec | sed "s/^.*-\([0-9.]*\.[0-9]*\.[0.-9]*-[0-9]*\)\.rockspec/\1/"`

#-------------------------------------------------------
# Remove existing archive and create a new one
#-------------------------------------------------------
rm -f $PLUGIN-$VERSION.tar.gz || true

#--------------
# Archive files
#--------------
tar cvzf $PLUGIN-$VERSION.tar.gz README.md *.rockspec kong
echo "Packaged $PLUGIN-$VERSION.tar.gz"

#-------------------------
# Create a rock
#-------------------------
luarocks make
luarocks pack $PLUGIN $VERSION