{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.steam = {
    enable = true;
    localNetworkGameTransfers.openFirewall = true;
  };
}
