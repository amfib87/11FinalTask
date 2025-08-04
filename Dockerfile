FROM golang:1.21.0

WORKDIR /app

COPY . .

RUN go mod tidy 

RUN GOOS=linux GOARCH=amd64 go build -o /11FinalTask

CMD ["/11FinalTask"] 