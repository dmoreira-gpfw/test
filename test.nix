with import <nixpkgs> {
};
{ ... }:
let
  pkgs = (import <nixpkgs> {});
  
in {
  gpdev_client = stdenv.mkDerivation rec {
    pname = "gpdev_client";
    version = "0.0";
    src = ../test;
  };
}
