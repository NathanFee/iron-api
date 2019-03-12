curl "http://localhost:4741/challenges/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "challenge": {
      "challenge_name": "'"${NAME}"'",
      "description": "'"${DES}"'"
    }
  }'
