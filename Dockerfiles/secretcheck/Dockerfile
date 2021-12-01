FROM python:3.9-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends git=1:2.* \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \ 
    && pip install --no-cache-dir trufflehog==2.1.*

WORKDIR /trufflehog

COPY . .

ENV SINCE_COMMIT ""

ENTRYPOINT [ "/trufflehog/trufflehog_entrypoint.sh" ]