#!/bin/bash
VERSION=$1
rpm -e couchbase-server
rm -rf /tmp/rpm
mkdir /tmp/rpm
wget -O /tmp/rpm/couchbaseServer.rpm http://172.23.120.24/builds/latestbuilds/couchbase-server/watson/$VERSION/couchbase-server-enterprise-debug-4.5.0-$VERSION-centos6.x86_64.rpm
rpm -i /tmp/rpm/couchbaseServer.rpm