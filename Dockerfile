FROM python:3.10-slim-buster

WORKDIR /app

COPY . .

RUN pip3 install --upgrade pip --break-system-packages
RUN pip3 install -U -r requirements.txt --break-system-packages

CMD ["python3", "main.py"]
