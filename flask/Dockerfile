FROM python:3.8-slim-buster

WORKDIR /flask_sr

COPY req.txt req.txt

RUN pip3 install -r req.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "app.py"]


