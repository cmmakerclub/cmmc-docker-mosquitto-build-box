FROM resin/rpi-raspbian

MAINTAINER Nat Weerawan <nat@cmmc.io> 
RUN apt-get update 
RUN apt-get install -y \
         build-essential \
         cmake \
         libssl-dev
RUN  apt-get install -y \
         wget

#COPY src /src
#
#WORKDIR /src/c-ares-1.10.0
#RUN ./configure
#RUN make -j5
#RUN make install
#
#WORKDIR /src/libwebsockets-2.1.0
#RUN mkdir build
#WORKDIR /src/libwebsockets-2.1.0/build
#RUN cmake ..
#RUN make -j5
#RUN make install

RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD run.sh /root/run.sh 

CMD ["/root/run.sh"]
