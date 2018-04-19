#!/bin/bash

curl "http://localhost:4741/wishes" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"


echo
