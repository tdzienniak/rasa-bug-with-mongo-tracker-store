# This repository demonstrates bug with Rasa 1.7.0.

To run bot with MongoDB tracker store:

`docker-compose run --rm bot shell --endpoints endpoints-with-mongo.yml --debug`

To run bot without MongoDB tracker store:

`docker-compose run --rm bot shell --debug`
