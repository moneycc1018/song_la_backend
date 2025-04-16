FROM python:3.12.10-alpine

WORKDIR /backend
COPY . /backend

RUN pip3 install -r requirements.txt

CMD uvicorn src.main:app --host '0.0.0.0' --port 8000 --reload
