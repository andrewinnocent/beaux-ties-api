#!/bin/bash

curl "http://localhost:4741/bows_carts" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "bows_carts": {
      "bow_id": "'"${BOW_ID}"'"
    }
  }'

echo
