with import <nixpkgs> {
};
{ ... }:
let
  pkgs = (import <nixpkgs> {});
  
in {
  gpdev_client = stdenv.mkDerivation rec {
    pname = "createpasswd";
    version = "0.0";
    buildInputs = [
      ninja
    ];

    src = fetchgit {
      url = "https://github.com/davidmoreirafr/createpasswd";
      rev = "master";
      sha256 = "0nmyp5yrzl9dbq85wyiimsj9fklb8637a1936nw7zzvlnzkgh28n";
    };
    buildPhase = ''
      echo nothing
    '';
  };
}
