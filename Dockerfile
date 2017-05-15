FROM debian:8


RUN apt-get update && apt-get install -yq curl bzip2
RUN useradd -ms /bin/bash nix

RUN mkdir -m 0755 /nix && chown nix /nix

USER nix
ENV USER nix

RUN curl https://nixos.org/nix/install | sh
