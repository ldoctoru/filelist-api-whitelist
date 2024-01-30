FROM python:3.10-buster

RUN apt-get -y update
RUN apt-get install -y chromium chromium-driver dnsutils

RUN pip install --upgrade pip
RUN pip install schedule
RUN pip install selenium==4.0.0

COPY . .

CMD ["python","-u","app.py"]