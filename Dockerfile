#> ZNC - Robust IRC bouncer
#? https://github.com/passcod/docker-znc
FROM passcod/archlinux
MAINTAINER  Félix Saparelli me@passcod.name

# Deps
RUN pacman -S --noconfirm znc sudo gcc &&\
  pacman -Scc --noconfirm &&\
  rm -rf /var/cache/pacman/pkg/*

# Config
ADD files/ /
RUN useradd znc

EXPOSE 6667
ENTRYPOINT ["/usr/local/bin/start-znc"]
CMD [""]
