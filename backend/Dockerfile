FROM python:alpine3.17

WORKDIR ./backend

COPY requirements.txt ./environment.txt
COPY main.py ./main.py

RUN pip install -r requirements.txt

ENTRYPOINT["uvicorn", "main:app", "--port", "80"]