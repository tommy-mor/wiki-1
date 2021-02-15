{ pkgs ? import <nixpkgs> { } }:

let
  # https://stackoverflow.com/questions/54810851/how-can-i-build-a-haskell-dependency-from-a-github-source-nix-file-using-nix
  hs = pkgs.haskellPackages.extend (self: super: { # (1) extend the package set
    orgmode-parse = self.callPackage ./orgmode-parse.nix { }; # (2) update clay
  });
  haskellDeps = ps:
    with ps; [
      base
      lens
      mtl
      aeson
      hlint
      haskell-language-server
      time
      turtle
      attoparsec
      brittany
      orgmode-parse
      universum
      clay
      lucid
      attoparsec
      aeson
      hoogle
    ];
  ghc = pkgs.haskellPackages.ghcWithPackages haskellDeps;

  nixPackages = with pkgs; [
    ghc
    pkgs.gdb
    pkgs.haskellPackages.cabal-install
    haskell-language-server
  ];
in pkgs.stdenv.mkDerivation {
  name = "Wiki";
  src = pkgs.lib.cleanSource ./.;
  preferLocalBuild = true;
  buildInputs = nixPackages;
}
