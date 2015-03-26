#!/bin/bash

cd ~

YAOURT_PKG="auto-complete emacs-tuareg-mode opam"
yaourt -S --noconfirm $YAOURT_PKG

OPAM_PKG="async cohttp core_bench core_extended cryptokit js_of_ocaml"
OPAM_PKG="$(OPAM_PKG) menhir merlin oasis ocp-indent ocp-index ssl utop"
opam init -a --yes
eval `opam config env`
opam switch 4.02.1 --yes
opam install $OPAM_PKG --yes

# config files
cp /vagrant/.emacs ~/.emacs
cp /vagrant/.ocamlinit ~/.ocamlinit
