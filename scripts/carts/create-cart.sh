#!/bin/bash

curl "http://localhost:4741/carts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "cart_products": {
      "users_id": "'"${users_id}"'",
      "carts_id": "'"${carts_id}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
