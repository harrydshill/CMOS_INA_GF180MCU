{ pkgs ? import <nixpkgs> {} }:

let
  nix-eda = builtins.getFlake "github:efabless/nix-eda";
in
pkgs.mkShell {
  packages = [
    nix-eda.packages.${builtins.currentSystem}.magic
    nix-eda.packages.${builtins.currentSystem}.xschem
    nix-eda.packages.${builtins.currentSystem}.ngspice
  ];
}
