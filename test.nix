with import <nixpkgs> {
};
{ ... }:
let
  pkgs = (import <nixpkgs> {});
  
in {
  hello = stdenv.mkDerivation {
    name = "gpdev_client";
    version = "0.0";
    src = ../test;

    buildInputs = [
      boost
      cmake
    ];

    configurePhase = ''
      echo configure phase done
    '';

    buildPhase = ''
      echo build phase done
    '';
    installPhase = ''
      echo install phase done
    '';
  };

}
