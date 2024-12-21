{
  config,
  lib,
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    unityhub
    _1password-gui
    nixfmt-rfc-style
    discord
    ptyxis
  ];
}
