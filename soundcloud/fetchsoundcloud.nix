{ runCommand, youtube-dl }:
{ url, name ? builtins.baseNameOf url, sha256 }:
runCommand name {
  nativeBuildInputs = [ youtube-dl ];

  outputHashAlgo = "sha256";
  outputHash = sha256;
  outputHashMode = "recursive";

  preferLocalBuild = true;
} ''
  mkdir -p /var/lib/soundcloud/cache
  mkdir -p $out && cd $out
  youtube-dl --no-check-certificate --cache-dir /var/lib/soundcloud/cache ${url}
''
