# Build stage
FROM golang:1.20 AS build

WORKDIR /app

COPY . .

RUN go build -o rando .

# Final stage
FROM ubuntu:latest

COPY --from=build /app/rando /usr/local/bin/rando

ENTRYPOINT ["/usr/local/bin/rando"]