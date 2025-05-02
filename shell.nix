with import <nixpkgs> {}; let
  # Use `nix-shell -p bundix --run "bundix -l"` to generate gemset.nix.
  gems = bundlerEnv {
    name = "gems";
    gemdir = ./.;
  };
in
  mkShell {
    packages = [gems gems.wrappedRuby ruby hugo go];
    shellHook = ''
      source bashrc
    '';
  }
