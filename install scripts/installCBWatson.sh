#!/bin/bash
if [ -z "$1" ]
then
        echo "Provide version number as argument"
        exit 1
fi
if [ -z "$2" ]
then
        RELEASE=watson
else
        RELEASE=$2
fi
VERSIONNUMBER=$1
if [ "$RELEASE" == "watson" ]
then
        VERSION=4.5.0-$VERSIONNUMBER
else
        VERSION=4.1.0-$VERSIONNUMBER
fi
echo $RELEASE
echo $VERSION
echo $VERSIONNUMBER
rpm -e couchbase-server
rm -rf /tmp/rpm
mkdir /tmp/rpm
wget -O /tmp/rpm/couchbaseServer.rpm http://172.23.120.24/builds/latestbuilds/couchbase-server/watson/$VERSION/couchbase-server-enterprise-4.5.0-$VERSION-centos6.x86_64.rpm
rpm -i /tmp/rpm/couchbaseServer.rpm
