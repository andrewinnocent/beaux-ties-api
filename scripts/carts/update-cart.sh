#!/bin/bash

curl "http://localhost:4741/carts/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "beauxties": {
      quantity: changeWhileInCart
    }
  }'

echo
