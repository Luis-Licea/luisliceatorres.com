with import <nixpkgs> {};
# Use `nix-shell` to activate shell.
  mkShell {
    packages = [
      go
      hugo
      markdown-link-check
      nushell
    ];
    shellHook = ''
      export PATH="$PWD/scripts:$PATH"
    '';
  }
