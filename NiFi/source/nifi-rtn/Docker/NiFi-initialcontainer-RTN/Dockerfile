FROM busybox:1.28 
WORKDIR /opt
COPY ./script.sh /opt
COPY ./NiFi-initfiles-RTN /tmp
COPY ./NiFi-initscripts-RTN /tmp/nifi
COPY ./jdbc /jdbc
COPY ./hdf /hdf
COPY ./nifi-prop /nifi-prop
RUN chmod +x /opt/script.sh
CMD ["./script.sh"]
