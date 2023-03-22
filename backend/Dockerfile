FROM python:alpine3.17

WORKDIR ./backend

COPY requirements.txt ./requirements.txt
COPY main.py ./main.py

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["uvicorn", "main:app", "--port", "8080"]