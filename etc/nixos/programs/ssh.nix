{
  config,
  lib,
  pkgs,
  ...
}:
{

  programs.ssh = {
    extraConfig = ''
      Host *
          IdentityAgent ~/.1password/agent.sock
    '';
    knownHosts.github.publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMh1Irw0nHxuIy5l28IOKX6rE81Oglx67sKCsx+RTJut";
    knownHosts.github.hostNames = [ "git@github.com" ];
  };

}
