{
  config,
  lib,
  pkgs,
  ...
}:
{

  imports = [
    ../utils/nixpkg.unstable.nix
  ];

  environment.systemPackages = with pkgs; [
    (vscode-with-extensions.override {
      vscodeExtensions = with unstable.vscode-extensions; [
        jnoortheen.nix-ide
        ms-azuretools.vscode-docker
        leonardssh.vscord
        hashicorp.terraform
      ];
    })
  ];
}
