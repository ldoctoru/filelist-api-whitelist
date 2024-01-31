FROM python:3.12.1-slim-bookworm

RUN apt-get -y update
RUN apt-get install -y chromium chromium-driver

RUN pip install --upgrade pip
COPY . .
RUN pip install -r requirements.txt

CMD ["python","-u","app.py"]