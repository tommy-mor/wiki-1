{ mkDerivation, aeson, attoparsec, base, bytestring, containers
, fetchgit, free, hashable, HUnit, insert-ordered-containers, lib
, neat-interpolation, old-locale, semigroups, tasty, tasty-hunit
, text, thyme, unordered-containers
}:
mkDerivation {
  pname = "orgmode-parse";
  version = "0.3.0";
  src = fetchgit {
    url = "https://github.com/jakeisnt/orgmode-parse.git";
    sha256 = "0x0a7fd3g3dvjyam2fhby4y16smqlld1pngw3mb1503qf1p6fxwh";
    rev = "89adc4087556bb0dd58a7648a9e7e239463aa059";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    aeson attoparsec base bytestring containers free hashable
    insert-ordered-containers old-locale semigroups text thyme
    unordered-containers
  ];
  testHaskellDepends = [
    aeson attoparsec base bytestring containers free hashable HUnit
    insert-ordered-containers neat-interpolation old-locale semigroups
    tasty tasty-hunit text thyme unordered-containers
  ];
  description = "A collection of Attoparsec combinators for parsing org-mode flavored documents";
  license = lib.licenses.bsd3;
}
