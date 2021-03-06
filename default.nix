let
  sources = import ./nix/sources.nix;
  nixpkgs = sources."nixpkgs";
  pkgs = import nixpkgs { };
in
_: _:
rec {
  spotifyd = pkgs.spotifyd.override { withMpris = true; };
  notmuch = pkgs.notmuch.override { withEmacs = false; };
  neomutt = pkgs.neomutt.override { inherit notmuch; };
}
