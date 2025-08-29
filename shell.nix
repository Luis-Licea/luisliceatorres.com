with import <nixpkgs> {};
# Use `nix-shell` to activate shell.
  mkShell {
    packages = [
      hugo
      go
      markdown-link-check
    ];
    shellHook = ''
      source bashrc
    '';
  }
