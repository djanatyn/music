let
  pkgs = import (import ./nix/sources.nix).nixpkgs {
    config = { allowUnfree = true; };
  };

  fetchsoundcloud = pkgs.callPackage ./fetchsoundcloud.nix { };
in { playlists = import ./playlists.nix { inherit fetchsoundcloud; }; }
