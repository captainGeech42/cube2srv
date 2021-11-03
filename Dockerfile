FROM alpine:3.14

RUN apk add subversion build-base zlib-dev

# Checkout the source code from svn to always get the latest version
RUN svn checkout svn://svn.code.sf.net/p/sauerbraten/code/ srv

WORKDIR /srv/src

# Build the server source
RUN make clean server

# Move the executable
RUN mv sauer_server ../

WORKDIR /srv
# remove original config
# container user will volume mount their own 
RUN rm -f server-init.cfg

# copy the run script
COPY run.sh .
RUN chmod +x run.sh

# expose ports
EXPOSE 28785/tcp
EXPOSE 28785/udp
EXPOSE 28786/tcp
EXPOSE 28786/udp

CMD ["./run.sh"]
