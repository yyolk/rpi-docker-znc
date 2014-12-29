#> ZNC - Robust IRC bouncer
#? https://github.com/yyolk/docker-znc
FROM yyolk/rpi-archlinuxarm
MAINTAINER  Joseph Yølk Chiocchi joe@yolk.cc

# Deps
RUN pacman -S --noconfirm znc sudo gcc &&\
  pacman -Scc --noconfirm &&\
  rm -rf /var/cache/pacman/pkg/*

# Config
ADD files/ /

EXPOSE 6667
ENTRYPOINT ["/usr/local/bin/start-znc"]
CMD [""]
