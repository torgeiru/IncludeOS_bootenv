{
  pkgs ? import <nixpkgs>{},
  find_chainloader ? import ./find_chainloader{ 
    pkgs=pkgs; 
  }
}
:
pkgs.stdenv.mkDerivation {
  name = "IncludeOS_bootenv";
  src = ./.;
  version = "1.0.0";

  propagatedBuildInputs = [
    find_chainloader
    pkgs.libvirt
  ];

  meta = {
    description = "An environment for running IncludeOS binaries";
    license = pkgs.lib.licenses.gpl3;
  };
}