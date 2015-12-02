{ stdenv, fetchurl, perl }: 

stdenv.mkDerivation { 
  name = "hello-2.1.1"; 
  builder = ./builder.sh; 
  src = "/home/sibi/sibi-nix/pkgs/hello-src/hello-2.1.1";
  inherit perl; 
}
