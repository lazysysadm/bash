#!/usr/bin/env bash
#Simple script allowing to connect servers with ssh with a key

name_server=""
usr="user"

printf " servers list : \n server01 \n server02 \n server03 \n"

if [ -z ${name_server} ]
then
        echo "No Name Server  sub ! Bye"
        exit 1
fi

echo "Server Name To Access :"
read name_server

#Command ssh to connect
ssh ${usr}@${name_server} -i path_rsa_key
