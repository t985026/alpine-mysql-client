# FROM golang AS build
# WORKDIR /src/
# COPY application\go\helloworld\main.go /src/
# RUN go mod init mygo && CGO_ENABLED=0 go build -o /bin/main


FROM alpine
MAINTAINER Justin<t985026@yahoo.com.tw>
ENV TZ Asia/Taipei
# COPY --from=build /bin/main /bin/main

RUN apk update && apk add --no-cache bash mysql-client
ENTRYPOINT ["/bin/bash"]

# EXPOSE 8888
# CMD [/bin/main]

