FROM alpine

RUN apk --no-cache add taskd

ENV TASKDDATA=/var/taskd
VOLUME /var/taskd

EXPOSE 53589

CMD ["taskd", "--version"]
