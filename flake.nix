{
  name = "nixpkgs";
  epoch = 2018;

  description = "A collection of packages for the Nix package manager";

  provides = deps:
    let pkgs = import ./. {}; in
    {
      lib = import ./lib;

      builders = {
        inherit (pkgs) stdenv fetchurl;
      };

      packages = {
        inherit (pkgs) hello nix fuse nlohmann_json boost;
      };
    };
}
