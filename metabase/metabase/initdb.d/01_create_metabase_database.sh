#!/bin/bash

echo "create database if not exists ${METABASE_DATABASE};" | "${mysql[@]}"
echo "grant all on ${METABASE_DATABASE}.* to '"${METABASE_USER}"'@'%' identified by '"${METABASE_PASSWORD}"' with grant option;" | "${mysql[@]}"
echo 'flush privileges;' | "${mysql[@]}"
