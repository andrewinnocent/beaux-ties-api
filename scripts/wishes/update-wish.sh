#!/bin/bash

curl "http://localhost:4741/wishes/${ID}" \
  --include \
  --request PUT \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "wish": {
      "active": "'"${ACTIVE}"'"
    }
  }'

echo
