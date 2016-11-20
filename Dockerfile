FROM resin/rpi-raspbian

MAINTAINER Nat Weerawan <nat@cmmc.io> 
RUN apt-get update 
RUN apt-get install -y \
         build-essential \
         cmake \
         libssl-dev

RUN apt-get install cmake-curses-gui  uuid-dev xsltproc docbook-xsl -y

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD run.sh /root/run.sh 

CMD ["/root/run.sh"]
