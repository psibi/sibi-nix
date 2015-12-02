{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  hello = import ./pkgs/hello-world {
      inherit (pkgs) stdenv fetchurl;
      perl = pkgs.perl;
  };
  hello-src = import ./pkgs/hello-src {
      inherit (pkgs) stdenv fetchurl;
      perl = pkgs.perl;
  };  
  
  sibiGHC = import ./pkgs/ghcHEAD {
      inherit (pkgs) stdenv perl autoconf automake gmp ncurses libiconv fetchurl;
      ghc = pkgs.haskell.compiler.ghc7102;
      happy = pkgs.haskell.packages.ghc7102.happy;
      alex = pkgs.haskell.packages.ghc7102.alex;
  };
}

