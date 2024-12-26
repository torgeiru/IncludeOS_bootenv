{
  pkgs ? import <nixpkgs>{},
  booter ? import ./default.nix {},
}:
pkgs.mkShell {
  packages = [booter];
}