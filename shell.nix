{
  pkgs ? import <nixpkgs>{},
  bootenv ? import ./default.nix {
    pkgs=pkgs;
  }
}
:
pkgs.mkShell {
  packages = [
    bootenv
  ];
}