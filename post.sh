#!/bin/bash

username="xxx"
password="xxx"

key="xxx"
summary="xxx"
description="xxx"
issuetype_id="xxx"
components_id="xxx"
labels="xxx"

curl -s  -u ${username}:${password} -H 'Accept: application/json' -H "Content-type: application/json" -X POST https://jira.xxx.com/jira/rest/api/2/issue/  -k \
-d @- <<EOF
{
    "fields": {
       "project":
       {
          "key": "${key}"
       },
       "summary": "${summary}",
       "description": "${description}",
       "issuetype": {
          "id": "${issuetype_id}"
       },
       "components": [
           {
                "id": "${components_id}"
           }
       ],
       "labels": [
              "${labels}"
       ]
   }
}
EOF
