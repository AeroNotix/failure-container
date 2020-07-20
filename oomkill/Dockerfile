FROM golang AS builder
MAINTAINER "Aaron France <afrance@6river.com>"

COPY . .

RUN go build -o /oomkill main.go

FROM golang:rc-buster

COPY --from=builder /oomkill /bin/oomkill

ENTRYPOINT ["/bin/oomkill"]
