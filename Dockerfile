FROM python:3.10-slim-bookworm

WORKDIR /app

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

COPY requirements.txt requirements.txt
RUN pip3 install --upgrade pip --break-system-packages
RUN pip3 install -U -r requirements.txt --break-system-packages

COPY . .

CMD ["python3", "main.py"]
