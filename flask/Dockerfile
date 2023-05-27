FROM python:3.8-slim-buster

WORKDIR /flask_sr

COPY /home/runner/work/k8s/k8s/flask/requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY app.py .

EXPOSE 5000

CMD [ "python3", "app.py"]


