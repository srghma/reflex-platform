{ pkgs, haskellLib, fetchFromGitHub }:
with haskellLib;
self: super: {
  cabal-macosx = dontCheck super.cabal-macosx;
  enclosed-exceptions = dontCheck super.enclosed-exceptions; # see https://github.com/jcristovao/enclosed-exceptions/issues/12
  haddock-library-ghcjs = dontCheck super.haddock-library-ghcjs;
  haddock-api-ghcjs = dontCheck super.haddock-api-ghcjs;
  algebraic-graphs = doJailbreak super.algebraic-graphs;
  # http-conduit = self.callHackageDirect { pkg = "http-conduit"; ver = "2.3.8"; sha256 = "sha256:0jbv4k5imhgj4givwcraqmi81ssq40gw3cd9kkpvsy724p9j9g72"; } {};
}
