{ pkgs ? import /nix/store/byjzdjpvrh042l85fmnvrd3c9hlqaygf-source {} }:

let
  # Local copy of nix-eda — no network fetch
  nix-eda = builtins.getFlake "path:/home/harry/nix-eda";
  pkgs' = import nix-eda.inputs.nixpkgs {
    inherit (pkgs.stdenv) system;
    overlays = [ nix-eda.overlays.default ];
  };

  xschem-with-pdk = pkgs'.writeShellScriptBin "xschem" ''
    export XSCHEM_LIBRARY_PATH="$PDK_ROOT/$PDK/libs.tech/xschem:$XSCHEM_LIBRARY_PATH"
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
    xterm
  ];

  env = {
    PDK_ROOT = "${builtins.getEnv "HOME"}/open-pdks/gf180mcu";
    PDK = "gf180mcuD";
  };
}
