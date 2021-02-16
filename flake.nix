{
  description = "personal wiki!";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    orgmode-parse.url = "github:jakeisnt/orgmode-parse/master";
  };

  outputs = { self, nixpkgs, orgmode-parse }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      defaultPackage.${system} =
        pkgs.callPackage ./default.nix { inherit orgmode-parse; };
    };
}
