{ config, lib, pkgs, ... }:

{
  networking.firewall = {
    enable = true;
    interfaces = {
      enp38s0.allowedUDPPorts = [ 51820 ];
      enp38s0.allowedTCPPorts = [ 443 ];
      wg0.allowedTCPPorts = [ 22 ];
    };
  };

  services.chrony.enable = true;
  services.chrony.servers = [ "time.cloudflare.com" ];

  networking = {
    nat.enable = true;
    hostId = "3fecaa4b";
    hostName = "skybox";
    nat.externalInterface = "enp38s0";
    defaultGateway = "199.231.162.161";
    nameservers = [ "1.1.1.1" "1.0.0.1" ];
    nat.internalInterfaces = [ "wg0" "virbr0" ];
    interfaces.enp38s0.ipv4.addresses = [
      { address = "199.231.162.162"; prefixLength = 29; }
    ];
  };
}
