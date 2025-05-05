with import <nixpkgs> {};
# Use `nix-shell` to activate shell.
mkShell {
  packages = [hugo go];
  shellHook = ''
    source bashrc
  '';
}
