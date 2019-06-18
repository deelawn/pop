FROM golang:1.11

RUN echo $GOPATH
RUN mkdir -p $GOPATH/src/github.com/deelawn/pop
WORKDIR $GOPATH/src/github.com/deelawn/pop
ADD . .
RUN go get -t -v ./...
RUN SODA_DIALECT=sqlite go test ./...
