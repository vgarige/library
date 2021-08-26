FROM golang:1.13.8-alpine3.11 as build

WORKDIR /home
COPY ./pkg/* /home/

RUN cd /home && go build -o library

FROM alpine
COPY --from=build /home/library /home/library

CMD ["/home/library"]

