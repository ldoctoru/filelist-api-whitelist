FROM python:3.10-buster

RUN apt-get update && \
    apt-get install -y chromium chromium-driver

RUN pip install --upgrade pip && \
    pip install schedule && \
    pip install selenium==4.1.0

COPY . .

CMD ["python", "-u", "app.py"]