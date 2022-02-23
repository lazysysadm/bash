#!/usr/bin/env bash
#Simple script allowing to connect servers with ssh with a key

name_server=""
usr="user"

echo "Server Name To Access :"
read name_server

#Command ssh to connect
ssh ${usr}@${name_server} -i path_rsa_key
