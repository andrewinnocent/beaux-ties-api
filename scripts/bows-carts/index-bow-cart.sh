#!/bin/bash

curl "http://localhost:4741/bows_carts" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"


echo
