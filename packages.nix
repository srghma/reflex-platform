{ haskellPackages, platform, pkgs }:

with haskellPackages;

let
t = x: builtins.trace x x;


in
pkgs.lib.traceValSeqN 2 ([
  ##############################################################################
  # Add general packages here                                                  #
  ##############################################################################
  reflex
  reflex-dom
  # (haskellPackages.callHackageDirect { pkg = "http-conduit"; ver = "2.3.8"; sha256 = "sha256:0jbv4k5imhgj4givwcraqmi81ssq40gw3cd9kkpvsy724p9j9g72"; } {})

] ++ (if platform == "ghcjs" then [
  ##############################################################################
  # Add ghcjs-only packages here                                               #
  ##############################################################################
  reflex-todomvc

] else []) ++ (if platform == "ghc" then [
  ##############################################################################
  # Add ghc-only packages here                                                 #
  ##############################################################################
  reflex-todomvc

] else []) ++ builtins.concatLists (map (x: (x.override { mkDerivation = drv: { out = (drv.buildDepends or []) ++ ( (drv.libraryHaskellDepends or [])) ++ (drv.executableHaskellDepends or []); }; }).out) [ reflex reflex-dom reflex-todomvc ]))
