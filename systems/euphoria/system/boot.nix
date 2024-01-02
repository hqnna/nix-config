{ config, lib, pkgs, ... }:

{
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    kernelPackages = pkgs.linuxPackages_latest;
    consoleLogLevel = 2;
    tmp.useTmpfs = true;

    kernelParams = [
      "zfs.zfs_arc_min=536870912"
      "zfs.zfs_arc_max=4294967296"
    ];
  };
}
