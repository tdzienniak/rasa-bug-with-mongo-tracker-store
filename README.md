# This repository demonstrates bug with Rasa 1.7.0.

# How to reproduce bug:

1. Run bot with MongoDB tracker store:

`docker-compose up`

2. Run test shell script:

`./test.sh`

The script will first insert new message and then predict action. `action_listen` gets predicted which is incorrect, because user's message is already in the tracker, thus `utter_greet` should be predicted. There are also 2 action_listen action in a row at the start of conversation.
