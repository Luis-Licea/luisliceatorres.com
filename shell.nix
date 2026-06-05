with import <nixpkgs> {};
# Use `nix-shell` to activate shell.
  mkShell {
    packages = [
      hugo
      go
      markdown-link-check
    ];
    shellHook = ''
      export PATH="$PWD/scripts:$PATH"
    '';
  }
