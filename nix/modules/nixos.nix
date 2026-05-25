# nix/modules/nixos.nix — auto-generated from bevy_time.caixa.lisp
# description: "Provides time functionality for Bevy Engine"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_time;
in {
  options.services.bevy_time = {
    enable = lib.mkEnableOption "bevy_time";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_time or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
