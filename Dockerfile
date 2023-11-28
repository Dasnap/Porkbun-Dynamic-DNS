FROM python:3-alpine

WORKDIR /porkbun

COPY main.py main.py
COPY requirements.txt requirements.txt 
COPY porkbun-ddns.py porkbun-ddns.py
COPY config.json.example config.json

#installing pip (needed for requests)
RUN apk add py3-pip --no-cache

ENTRYPOINT ["python", "main.py"]