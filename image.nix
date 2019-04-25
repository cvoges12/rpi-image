{ config, pkgs, ... }: 
in {
  nixpkgs.localSystem.system = "aarch64-linux";
  imports = [
    <nixpkgs/nixos/modules/installer/cd-dvd/sd-image-aarch64.nix>
  ];
  
  environment.systemPackages = with pkgs; [
    git
  ];
  
  networking = {
    firewall.enable = false;
    nameservers = [
      "1.1.1.1"
    ];
  };
}
