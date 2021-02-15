{ pkgs ? import <nixpkgs> { } }:

let
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