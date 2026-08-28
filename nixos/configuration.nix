{ config, lib, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "spare";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Amsterdam";

  users.users.paul = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
    ];
  };

  # Bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # Firefox
  programs.firefox.enable = true;

  # Sway
  programs.sway.enable = true;
  programs.sway.wrapperFeatures.gtk = true;
  services.gnome.gnome-keyring.enable = true;
  services.dbus.enable = true;

  # Ly
  services.displayManager.ly.enable = true;

  # Syncthing
  services.syncthing = {
    enable = true;
    user = "paul";
    group = "users";
    dataDir = "/home/paul/.local/share/syncthing";
    configDir = "/home/paul/.config/syncthing";
    guiAddress = "127.0.0.1:45671";
    openDefaultPorts = true;
  };
  

  environment.systemPackages = with pkgs; [
    vim
    wget
    vesktop
    galculator
    tree
    git

    libreoffice-fresh

    wl-clipboard # (sway)
    mako # Notification utility (sway)
    fuzzel # (sway)

    freetube

    pulsemixer # TUI volume controller
    yazi # TUI file explorer
    bluetuith # TUI bluetooth controller

    waybar

    zed-editor

    anki
  ];

  
  environment.sessionVariables = {
    EDITOR = "$HOME/.local/bin/nvim/nvim";
    VISUAL = "$HOME/.local/bin/nvim/nvim";
  };


  # ProtonVPN Wireguard Connections (sudo systemctl start/stop wg-quick-wg0)
  networking.wg-quick.interfaces = {
    wg0 = {
      autostart = true; 
      configFile = "/etc/nixos/protonvpn/es_87.conf";
    };
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05";
}

