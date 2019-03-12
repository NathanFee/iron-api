curl "http://localhost:4741/challenges" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "challenge": {
      "challenge_name": "'"${NAME}"'",
      "description": "'"${DES}"'"
    }
  }'

echo
