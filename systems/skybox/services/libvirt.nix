{ config, lib, pkgs, ... }:

{
  virtualisation.libvirtd = {
    enable = true;
    qemu.package = pkgs.qemu_kvm;
    qemu.swtpm.enable = true;
    qemu.ovmf.enable = true;
    allowedBridges = [
      "virbr0"
    ];
  };
}
