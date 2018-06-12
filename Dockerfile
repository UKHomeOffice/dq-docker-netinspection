FROM ubuntu:xenial

MAINTAINER Pawel Niemiec <pniemiec@noledgetech.com>

RUN apt-get update && apt-get install -y tcpdump

RUN mkdir /out && touch /out/file.pcap

COPY ./src/entrypoint.sh /src/entrypoint.sh

RUN chmod +x /src/entrypoint.sh

CMD /src/entrypoint.sh
