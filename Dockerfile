FROM python:3.8-alpine3.10

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY uploader /usr/local/lib/python3.8/site-packages/uploader
COPY upload /bin/upload

RUN sed -i.bak 's/if k is/if k ==/' /usr/local/lib/python3.8/site-packages/minio/helpers.py
