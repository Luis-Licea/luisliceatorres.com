---
title: Install Nix and Home-Manager in PinePhone via Arch Linux
tags: Programming
keywords: Programming
---

I am running [Arch Linux ARM] on my [PinePhone]. Installing the native `nix`
package via `sudo pacman -S nix` did not work for me because I ran into
`libboost_context.so` shared library errors. I had to remove and cleanup the
`nix` installation and use the official [Nix installation script].

Before running the [Nix installation script] I had to uninstall the native `nix`
package with `sudo pacman -Rs nix` and remove the users and groups that had been
created, otherwise the official script would fail:
```bash
for i in {01..10}; do
    sudo userdel "nixbld$i";
done;
sudo groupdel nixbld
```

Then, I used the following commands to install `nix` and `home-manager`:

```bash
curl -L https://nixos.org/nix/install | sh -s -- --daemon
sudo systemctl enable nix-daemon.service
sudo usermod -aG nix-users $USER
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
```

Then I used `home-manager edit` and `home-manager switch` to add packages to the
home-manger configuration file and install the packages.

Installing different `nixpkgs` channels is described in the [Home-Manager standalone installation] section.

[Arch Linux ARM]: https://github.com/dreemurrs-embedded/Pine64-Arch/releases/download/20240326/archlinux-pinephone-phosh-20240326.img.xz
[Home-Manager standalone installation]: https://nix-community.github.io/home-manager/index.xhtml#sec-install-standalone
[Nix installation script]: https://nixos.org/nix/install
[PinePhone]: https://pine64.org/devices/pinephone/
