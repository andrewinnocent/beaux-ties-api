#!/bin/bash

curl "http://localhost:4741/bows_carts/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"
  --data '{
    "bows_carts": {
      "id": "'"${ID}"'"
    }
  }'

echo
