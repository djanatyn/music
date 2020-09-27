{ runCommand, youtube-dl }:
{ url, name ? builtins.baseNameOf url, sha256 }:
runCommand name {
  nativeBuildInputs = [ youtube-dl ];

  outputHashAlgo = "sha256";
  outputHash = sha256;
  outputHashMode = "recursive";

  preferLocalBuild = true;
} ''
  mkdir -p $out && cd $out
  youtube-dl --no-check-certificate \
    --add-metadata \
    --write-info-json \
    --no-cache-dir \
    --limit-rate 1M \
    --sleep-interval 1 \
    ${url}
''
