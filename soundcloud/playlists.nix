{ fetchsoundcloud }:

{
  calm-party = fetchsoundcloud {
    url = "https://soundcloud.com/superhexagon/sets/calm-party";
    sha256 = "0fgzs6362kryvb6gv4jlb82mi59zycm44kngiix1491980mkjk76";
    name = "calm-party";
  };

  vanity = fetchsoundcloud {
    url = "https://soundcloud.com/superhexagon/sets/best-tracks";
    sha256 = "14xb5z0fh7s892d73pbhnn8bm9niv0zrgpwywgabbg2xdg276hw6";
    name = "best-tracks";
  };

  ikotu = fetchsoundcloud {
    url = "https://soundcloud.com/ikotu/sets/i-ii-iii";
    sha256 = "0k9gal2nysj9k8igxq4l3hc5bfhv4z7lf6981nsd8ch6rlzdrf2w";
    name = "i-ii-iii";
  };

  malibu = fetchsoundcloud {
    url = "https://soundcloud.com/elidrinksgrapemilk/sets/all-outta-cheetos";
    sha256 = "1vng537f1g2f5mxq6xjaxi543lpqvs9aiqashz02s0m556yl3nb2";
    name = "malibu";
  };
}
