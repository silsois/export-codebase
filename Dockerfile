FROM python:3.9-slim
RUN apt-get update && apt-get install -y git
RUN pip install codebase-to-text
WORKDIR /code