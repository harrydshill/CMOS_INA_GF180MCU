{ pkgs ? import <nixpkgs> {} }:

let
  nix-eda = builtins.getFlake "github:fossi-foundation/nix-eda";
  pkgs' = import nix-eda.inputs.nixpkgs {
    inherit (pkgs.stdenv) system;
    overlays = [ nix-eda.overlays.default ];
  };

  # Create a wrapper script for xschem - to pull in pdk
  xschem-with-pdk = pkgs'.writeShellScriptBin "xschem" ''
    # This uses the PDK_ROOT and PDK variables from the shell environment
    exec ${pkgs'.xschem}/bin/xschem --rcfile "$PDK_ROOT/$PDK/libs.tech/xschem/xschemrc" "$@"
  '';
in
pkgs'.mkShell {
  packages = with pkgs'; [
    xschem-with-pdk
    ngspice
    magic
    klayout
    netgen
  ];

  env = {
    PDK_ROOT = "${builtins.getEnv "HOME"}/open_pdks/gf180mcu";
    PDK = "gf180mcuD";
  };
}
