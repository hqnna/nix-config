{ config, lib, pkgs, ... }:

{
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINcmyl7jK8RWTXnR0C7YkmyicFHOUaMDFQDsDfgHT3bw hanna@saturn"
  ];

  services.openssh = {
    enable = true;
    settings = {
      ListenAddress = "10.0.0.1";
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "prohibit-password";
      PrintLastLog = false;
    };
  };
}
