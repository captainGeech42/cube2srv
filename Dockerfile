FROM ubuntu:20.04

RUN apt update -qq
RUN apt install -y -qq wget

WORKDIR /srv

# download sauerbraten
RUN wget -O sauerbraten.tar.bz2 https://pilotfiber.dl.sourceforge.net/project/sauerbraten/sauerbraten/2020_11_29/sauerbraten_2020_12_27_linux.tar.bz2
RUN tar xvjf sauerbraten.tar.gz

WORKDIR /srv/sauerbraten

# generate the config
COPY server-init.cfg .
COPY gen_cfg.sh .
RUN ./gen_cfg.sh

EXPOSE 28785
EXPOSE 28785/udp
EXPOSE 28786
EXPOSE 28786/udp
