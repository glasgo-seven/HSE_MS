#!/bin/bash

: '
	Напишите скрипт для отправки сообщения в Telegram через API.
'

token=""
chat_id=""

header="Content-Type: application/json"
json="{'chat_id': '$chat_id', 'text': '$1'}"
url="https://api.telegram.org/bot$token/sendMessage"

curl -X GET -H "$header" -d "$json" $url

# curl -X POST -H 'Content-Type: application/json' -d "{"chat_id": "371972755", "text": "$1"}" https://api.telegram.org/bot1706528225:AAHlRUlTDKGZIHkdUK7aRIxRLGd8t6GbFCc/sendMessage
