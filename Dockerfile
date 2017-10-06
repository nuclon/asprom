FROM golang:latest AS build-env
RUN mkdir /go/src/app 
ADD . /go/src/app 
WORKDIR /go/src/app
RUN go build -i -o asprom

# final stage
FROM alpine
WORKDIR /app
COPY --from=build-env /go/src/app/asprom /app/
ENTRYPOINT ./asprom
