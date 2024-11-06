#!/bin/bash

username="sanakin"
server_ip="172.24.170.102"

server="$username@$server_ip"

backup_file_name="backup.tar"

# ~/HSE/folder/
# echo $server

ssh $server "tar -cf $backup_file_name $1"
ssh $server "scp $server/$1 $backup_file_name"
