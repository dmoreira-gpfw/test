with import <nixpkgs> {
} stdenv.mkDerivation {
  name = "gpdev_client";
  version = "0.0";
  src = ../test;

  buildInputs = [
    boost
    cmake
  ];

  configurePhase = ''
    true
  '';
  buildPhase = ''
    true
    false;
  '';
}
