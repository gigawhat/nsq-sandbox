FROM alpine:latest

ENV MSGS=1000
ENV TOPIC=test
ENV NSQD_HOST=nsqd
ENV NSQD_PORT=4151
ENV FOREVER=false

RUN apk add --no-cache curl

ADD producer.sh /producer.sh

CMD /producer.sh