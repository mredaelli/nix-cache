let
  sources = import ./nix/sources.nix;
  nixpkgs = sources."nixpkgs";
  pkgs = import nixpkgs { };
in
_: _:
{
  spotifyd = pkgs.spotifyd.override { withMpris = true; };
}
