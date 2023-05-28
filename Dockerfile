FROM python:3.8-slim-buster

WORKDIR /python-docker
COPY req.txt req.txt

RUN pip3 install -r req.txt
COPY . .

CMD [ "python3", "app.py"]
