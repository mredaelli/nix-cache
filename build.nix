let
  sources = import ./nix/sources.nix;
  nixpkgs = sources."nixpkgs";
  overlays = import ./default.nix;
  pkgs = import nixpkgs { config = { }; overlays = [ overlays ]; };
in
{
  spotifyd = pkgs.spotifyd;
  notmuch = pkgs.notmuch;
  neomutt = pkgs.neomutt;
}
