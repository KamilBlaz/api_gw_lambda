FROM hashicorp/terraform:1.2.4
WORKDIR /infra
ENTRYPOINT [""]
ENV PYTHONUNBUFFERED=1

RUN \
  apk update && \
  apk add  --no-cache python3  curl bash py-pip jq && \
  ln -sf python3 /usr/bin/python && \
  python3 -m ensurepip && \
  apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python3-dev make curl && \
  pip3 install awscli --no-cache-dir && \
  apk del --purge build

COPY ./ ./
