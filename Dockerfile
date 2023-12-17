# syntax=docker/dockerfile:1

FROM python:3.11-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ 'python', '-m', 'flask', '--app=main', 'run', '--host=0.0.0.0']

LABEL org.opencontainers.image.source="https://github.com/tiborverlics/github_actions_test"