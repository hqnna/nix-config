{ config, lib, pkgs, ... }:

{
  networking = {
    hostId = "72c67412";
    hostName = "euphoria";
    networkmanager.enable = true;
    firewall.enable = false;

    timeServers = [
      "time.cloudlare.com"
    ];

    nameservers = [
      "2606:4700:4700::1111"
      "2606:4700:4700::1001"
      "1.1.1.1"
      "1.0.0.1"
    ];
  };
}
