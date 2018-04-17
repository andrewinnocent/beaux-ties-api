#!/bin/bash

curl "http://localhost:4741/bows_carts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"
  --data '{
    "bows_carts": {
      "bow_id": "'"${BOW_ID}"'",
      "cart_id": "'"${CART_ID}"'"
    }
  }'

echo
