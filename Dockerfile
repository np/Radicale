FROM gliderlabs/alpine:3.2

RUN apk-install python && mkdir -p /data && chown daemon:daemon /data

COPY . /opt/radicale

USER daemon
WORKDIR  /data
ENV HOME /data
EXPOSE 5232

CMD ["python", "-u", "radicale.py", "-C", "/data/config"]
