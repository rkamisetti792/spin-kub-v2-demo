FROM golang:1.23rc2

ADD . /go/src/spinnaker.io/demo/k8s-demo

RUN go install spinnaker.io/demo/k8s-demo

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
