#!/bin/bash

cd /home/vagrant

# yaourt packages
# yaourt -S --noconfirm opam
# yaourt -S --noconfirm emacs-tuareg-mode
# yaourt -S --noconfirm auto-complete

# opam packages
OPAM_PACKAGES="async cohttp core_bench core_extended cryptokit js_of_ocaml menhir merlin oasis ocp-indent ocp-index ssl utop"
opam init -a --yes
eval `opam config env`
opam switch 4.02.1 --yes
opam install $OPAM_PACKAGES --yes

# config files
git clone https://github.com/samoht/ocaml-emacs-settings.git
cp ocaml-emacs-settings/.emacs ~/.emacs
cp ocaml-emacs-settings/.emacs.d/* ~/.emacs.d/
cat > ~/.ocamlinit <<EOF
#use "topfind";;
#thread;;
#camlp4o;;
EOF
