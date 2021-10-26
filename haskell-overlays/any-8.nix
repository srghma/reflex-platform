{ lib, haskellLib, getGhcVersion }:
with haskellLib;
self: super: lib.optionalAttrs (lib.versionOlder (getGhcVersion super.ghc) "8.6.0") {
  # http-conduit = self.callHackageDirect { pkg = "http-conduit"; ver = "2.3.8"; sha256 = "sha256:0jbv4k5imhgj4givwcraqmi81ssq40gw3cd9kkpvsy724p9j9g72"; } {};
}
