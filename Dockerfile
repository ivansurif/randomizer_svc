FROM python:3.11-slim-buster

WORKDIR /app

RUN pip install poetry==1.5.1

COPY pyproject.toml .
COPY poetry.lock .

RUN poetry export --without-hashes --format=requirements.txt > requirements.txt && \
     pip install --verbose -r requirements.txt --upgrade

RUN pip3 install -r requirements.txt

COPY app.py app.py
COPY static/swagger.yaml static/swagger.yaml

EXPOSE 5000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
