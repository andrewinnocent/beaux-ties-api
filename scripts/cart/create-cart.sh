#!/bin/bash

curl "http://localhost:4741/carts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "beauxties": {
      beauxtie: addedToCart
    }
  }'

echo
