{ config, lib, pkgs, ... }:

let
  keyPath = /etc/wireguard;
in {
  networking.wireguard.interfaces = {
    wg0 = {
      listenPort = 51820;
      ips = [ "10.0.0.1/24" ];
      privateKeyFile = "${keyPath}/private.key";

      peers = [
        {
          publicKey = "o68isPYw0/93i6HgJRmzjchRHwDHdpuVPV05uCWcwUg=";
          allowedIPs = [ "10.0.0.2/32" ];
        }
      ];
    };
  };
}
