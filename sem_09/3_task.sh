#!/bin/bash

openssl rand -base64 $1 | tr -dc 'a-zA-Z0-9' | head -c $1
echo
