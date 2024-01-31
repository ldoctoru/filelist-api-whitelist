FROM python:3.10-buster

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y chromium chromium-driver && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN python -m venv /venv
ENV PATH="/venv/bin:$PATH"

RUN . /venv/bin/activate && \
    pip install --upgrade pip && \
    pip install schedule && \
    pip install selenium==4.0.0

COPY . .

CMD ["python", "-u", "app.py"]