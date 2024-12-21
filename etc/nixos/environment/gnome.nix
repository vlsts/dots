{
  config,
  lib,
  pkgs,
  ...
}:
{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.excludePackages = [
    pkgs.xterm
  ];

  environment.gnome.excludePackages = [
    pkgs.gnome-tour
    pkgs.epiphany
    pkgs.gnome-calendar
    pkgs.gnome-characters
    pkgs.gnome-contacts
    pkgs.gnome-maps
    pkgs.gnome-weather
    pkgs.simple-scan
    pkgs.yelp
    pkgs.gnome-software
    pkgs.gnome-user-docs
    pkgs.geary
    pkgs.gnome-terminal
    pkgs.gnome-usage
    pkgs.gnome-connections
    pkgs.gnome-logs
    pkgs.gnome-disk-utility
  ];
}
