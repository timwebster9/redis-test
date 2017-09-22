#!/usr/bin/env bash

#set -x
#cmd="MULTI\nGET buildno\nINCR buildno\nEXEC"
#echo $command

command="printf \"MULTI\nGET buildno\nINCR buildno\nEXEC\" | redis-cli --raw -h mars"
result=$(eval $command)
echo $result
#echo $result