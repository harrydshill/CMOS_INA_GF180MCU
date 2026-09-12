{ pkgs ? import <nixpkgs> {} }:
let
  nix-eda = builtins.getFlake "github:fossi-foundation/nix-eda";
  pkgs' = import nix-eda.inputs.nixpkgs {
    inherit (pkgs.stdenv) system;
    overlays = [ nix-eda.overlays.default ];
  };
in
pkgs'.mkShell {
  buildInputs = with pkgs'; [
    xschem
    ngspice
    magic
    klayout
    netgen
  ];
}
