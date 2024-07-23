# Randomizer
This service provides a RESTful API which provides random functionality. It is written in Python using Flask.

The [Swagger Spec](static/swagger.yaml) defines the interface of the service.

## Running Locally
The service can be run as a Python process.

Install requirements:
```
poetry install --no-root
```

Run:
```
poetry run python -m flask run
```

## Query
```
curl 'http://localhost:5000/random/default/choice?value=3&value=5&value=7'

{"value":"7"}
```
