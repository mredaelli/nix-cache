let
  sources = import ./nix/sources.nix;
  nixpkgs = sources."nixpkgs";
  spotifyd-overlay = import ./default.nix;
  pkgs = import nixpkgs { config = { }; overlays = [ spotifyd-overlay ]; };
in
{
  spotifyd = pkgs.spotifyd;
}
