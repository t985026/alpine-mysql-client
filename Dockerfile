FROM alpine
MAINTAINER Justin<t985026@yahoo.com.tw>
ENV TZ Asia/Taipei
RUN apk update && apk add --no-cache bash mysql-client
COPY login.sh /
ENTRYPOINT ["/bin/bash"]
CMD ["/login.sh"]

