FROM golang:alpine

WORKDIR /app

COPY . .
RUN go mod init containerized-full-cycle-go-app 

RUN go build -o bin .

ENTRYPOINT [ "/app/bin" ]