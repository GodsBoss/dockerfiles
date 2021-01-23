FROM debian:buster-20210111

# Prerequisites.
RUN \
  apt-get update && \
  apt-get install -y \
    curl \
    gcc \
    git

# Create bootstrap Go installation in /tmp/go.
RUN \
  curl -L -o /root/go.tar.gz https://golang.org/dl/go1.15.6.linux-amd64.tar.gz && \
  tar -xvz -f /root/go.tar.gz -C /tmp

RUN \
  git clone https://go.googlesource.com/go /opt/go && \
  cd /opt/go && \
  git checkout dev.go2go

RUN \
  cd /opt/go/src && \
  GOROOT_BOOTSTRAP=/tmp/go ./make.bash && \
  ln -s /opt/go/bin/go /usr/local/bin/go

RUN \
  addgroup --gid 1000 godev && \
  adduser --uid 1000 --gid 1000 --disabled-password --home /home/godev --gecos "First Last,RoomNumber,WorkPhone,HomePhone" godev

WORKDIR /home/godev
USER godev

ENTRYPOINT ["go", "tool", "go2go"]
