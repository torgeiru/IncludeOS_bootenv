{ 
  pkgs ? import <nixpkgs> {}
}:
pkgs.python3.pkgs.buildPythonPackage {
  pname = "Find_chainloader";
  version = "1.0.0";
  src = ./.;  # Use the current directory as the source
  pyproject = true;
  dontUseSetuptoolsCheck = true;
  doCheck = true;

  build-system = with pkgs.python3.pkgs; [
    setuptools
    setuptools-scm
  ];
}
