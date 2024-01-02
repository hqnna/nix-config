{ config, lib, pkgs, ... }:

{
  boot = {
    tmp.cleanOnBoot = true;
    loader.grub.enable = true;
    loader.grub.zfsSupport = true;
    loader.grub.efiSupport = true;
    loader.efi.canTouchEfiVariables = true;
    loader.grub.mirroredBoots = [ { devices = [ "nodev" ]; path = "/boot"; } ];
    kernelParams = [ "zfs.zfs_arc_min=536870912" "zfs.zfs_arc_max=4294967296" ];
    kernel.sysctl = {
      "net.ipv4.ip_forward" = true;
      "vm.swappiness" = 50;
    };
  };
}
