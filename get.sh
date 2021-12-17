#!/bin/bash

ST=0
username="xxx"
password="xxx"

filter="xxx" # jira filter number ex) 222222

for i in `seq 200`
do

MAX=`expr 50 \* $i`
ST=`expr $MAX \+ 1`

curl -s -u ${username}:${password} -H 'Accept: application/json' -H "Content-type: application/json" -X GET  "https://jira.xxx.com/jira/rest/api/2/search?jql=filter=${filter}&startAt=$ST&maxResults=$MAX" | jq -r '.issues[]|[.key, .fields.summary] |@csv'

done
