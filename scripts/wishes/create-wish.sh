#!/bin/bash

curl "http://localhost:4741/wishes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "wish": {
      "user_id": "'"${USER_ID}"'",
      "bow_id": "'"${BOW_ID}"'"
    }
  }'

echo
