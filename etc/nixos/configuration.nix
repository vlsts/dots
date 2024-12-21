{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix

    ./programs/firefox.nix
    ./programs/vscode.nix
    ./programs/steam.nix
    ./programs/git.nix
    ./programs/ssh.nix
    ./programs/others.nix

    ./environment/gnome.nix
  ];

  # systemd-boot EFI
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "local";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Bucharest";

  users.users.vlad = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    # packages = with pkgs; [
    #   tree
    # ];
  };

  system.stateVersion = "24.11";
}
