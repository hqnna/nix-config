{ config, lib, pkgs, ... }:

let
  certs = /etc/certs;
in {
  http2 = true;
  onlySSL = true;
  serverName = "skybox.rs";

  sslCertificate = "${certs}/skybox/cert.pem";
  sslCertificateKey = "${certs}/skybox/key.pem";

  extraConfig = ''
    ssl_verify_client on;
    ssl_client_certificate ${certs}/cloudflare.pem;
  '';

  locations."/" = {
    root = "/var/www/html";
    index = "index.html";
  };
}
