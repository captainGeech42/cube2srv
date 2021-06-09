FROM ubuntu:20.04

RUN apt update -qq
RUN apt install -y -qq wget

WORKDIR /srv

# download sauerbraten
RUN wget -O sauerbraten.tar.bz2 https://pilotfiber.dl.sourceforge.net/project/sauerbraten/sauerbraten/2020_11_29/sauerbraten_2020_12_27_linux.tar.bz2
RUN tar xjf sauerbraten.tar.bz2

WORKDIR /srv/sauerbraten

# copy base config
COPY server-init.cfg .

# copy run script
COPY run.sh .
RUN chmod +x run.sh

EXPOSE 28785/tcp
EXPOSE 28785/udp
EXPOSE 28786/tcp
EXPOSE 28786/udp

CMD "/srv/sauerbraten/run.sh"