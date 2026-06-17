FROM python:3.10-alpine3.21
LABEL MANTAINER="Luciano Correia"

WORKDIR /app

# Atualiza todos os pacotes, incluindo OpenSSL (libcrypto3/libssl3)
RUN apk update && apk upgrade --no-cache

COPY . /app

RUN apk add --no-cache curl \
    && pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
