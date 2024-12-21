{
  config,
  lib,
  pkgs,
  ...
}:
{
  programs.git = {
    enable = true;
    config = [
      {
        user.name = "Vlad-Stefan Sas";
        user.email = "me@svs.pm";
        user.signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAVle1cS6oU+vtfSIQUkUEB/dJvJXwYGTFmymow4Icam";

        core.editor = "code --wait";
        commit.gpgSign = true;
        gpg.format = "ssh";
      }
    ];
  };
}
