# ocaml-dev-vm

Opinionated OCaml development VM descriptor.

* Arch Linux
* opam
* js_of_ocaml
* Emacs
* merlin
* tuareg-mode

To reconstruct the VM, use a tool called Vagrant. Go to the checkout directory and say `vagrant up`.

Work in progress.

Would be nice to:

* [ ] ensure builds from scratch correctly (the build is rather slow)
* [ ] streamline Emacs and desktop setup a bit
* [ ] add a few quickstart examples, especially for js_of_ocaml
* [ ] try to arrange things so the build is fixed and does not break? rather difficult with Arch. Maybe Nix/NixOS?

## Credits

* https://github.com/samoht/ocaml-emacs-settings.git
* https://github.com/avsm/vagrant-opam
