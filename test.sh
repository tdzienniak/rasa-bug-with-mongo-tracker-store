#!/usr/bin/env bash

echo "Insert message..."
curl -X POST -H "Content-Type: application/json" -d '{"text":"hi","sender":"user"}' http://localhost:5005/conversations/default/messages | python -m json.tool

echo "Predict actions..."
curl -X POST http://localhost:5005/conversations/default/predict | python -m json.tool
