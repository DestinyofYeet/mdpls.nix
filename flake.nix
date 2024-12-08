{
  description = "A flake to provide mdpls";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }@inputs: let 
    pkgs = import nixpkgs { system = "x86_64-linux"; };
  in {

    packages.x86_64-linux = rec {
      mdpls = pkgs.callPackage ./pkg.nix {};
      default = mdpls;
    };
  };
}
