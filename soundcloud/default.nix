let
  pkgs = import (import ./nix/sources.nix).nixpkgs {
    config = { allowUnfree = true; };
  };

  fetchsoundcloud = pkgs.callPackage ./fetchsoundcloud.nix { };
in {
  calm-party = fetchsoundcloud {
    url = "https://soundcloud.com/superhexagon/sets/calm-party";
    sha256 = "1dh97yj3gfbr8jdz295hdisd0ngwfndg7n37p7a22xr446fagw1j";
    name = "calm-party";
  };

  vanity = fetchsoundcloud {
    url = "https://soundcloud.com/superhexagon/sets/best-tracks";
    sha256 = "0a4hxwlh9y2x6cqppsvmxzaqwf65q4ix4ry13p5k0k12igbhnrww";
    name = "best-tracks";
  };

  ikotu = fetchsoundcloud {
    url = "https://soundcloud.com/ikotu/sets/i-ii-iii";
    sha256 = "0n8iqn90bpbdvwgsskfdpyp5y1m6hfdr4ywf38y5wpms62071q16";
    name = "i-ii-iii";
  };
}
