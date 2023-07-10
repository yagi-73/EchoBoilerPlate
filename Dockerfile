FROM golang:latest

WORKDIR /app
COPY ./app /app

RUN go mod init main \
  && go mod tidy \
  && go build

ENV CGO_ENABLED=0 \
  GOOS=linux \
  GOARCH=amd64
EXPOSE 1323


CMD ["go", "run", "main.go"]