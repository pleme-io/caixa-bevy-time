# nix/modules/home-manager.nix — auto-generated from bevy_time.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_time; in {
  options.programs.bevy_time = {
    enable = lib.mkEnableOption "bevy_time";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_time or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
