FROM python:3.10-slim-buster

WORKDIR /app

RUN apt-get update && apt-get install -y git

COPY requirements.txt requirements.txt
RUN pip3 install --upgrade pip --break-system-packages
RUN pip3 install -U -r requirements.txt --break-system-packages

COPY . .

CMD ["python3", "main.py"]
