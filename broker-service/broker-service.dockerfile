# FROM golang:1.21-alpine as builder

# RUN mkdir /app

# COPY . /app

# WORKDIR /app

# RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api


FROM alpine:latest

RUN mkdir /app
COPY brokerApp /app
# COPY --from=builder /app/brokerApp /app

CMD [ "/app/brokerApp" ]
