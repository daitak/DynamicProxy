FROM ubuntu:trusty
MAINTAINER daitak <daiki.takasao@gmail.com>
RUN apt-get update

##Install go
RUN apt-get -y install golang
RUN apt-get -y install git

#Build linked.go
COPY linked.go /tmp/linked.go
RUN mkdir /opt/gocode
ENV GOPATH /opt/gocode
WORKDIR /
RUN go get github.com/fsouza/go-dockerclient
RUN go get github.com/garyburd/redigo/redis
RUN go build /tmp/linked.go

#Run linked.go
CMD ["/linked"]
