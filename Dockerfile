FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
# COPY go.sum ./

RUN go mod download

COPY *.go ./
COPY data.csv ./

RUN go build -o /hello-csv

CMD [ "/hello-csv" ]