#!/bin/bash

curl "http://localhost:4741/bows/${ID}" \
  --include \
  --request PUT \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "bow": {
      "wishlist": "'"${WISHLIST}"'"
    }
  }'

echo
