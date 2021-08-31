projectdir=$(pwd)
rm -f $projectdir/hie.yaml
touch $projectdir/hie.yaml
echo "cradle:" > $projectdir/hie.yaml
echo "  multi:" >> $projectdir/hie.yaml
dojob () {
  dir="$1"
  cd $projectdir/$dir
  output=$(/nix/store/ls47a7id24w5498cmv6djc65vbxf1ppm-implicit-hie-0.1.2.5/bin/gen-hie || true)

  if [ -z "$output" ]
  then
    comment="#"
  else
    comment=""
  fi

  echo "$comment    - path: \"./$dir\"" >> $projectdir/hie.yaml
  echo "$comment      config:" >> $projectdir/hie.yaml
  output=$(echo "$output" | sed 's@^@        @')
  output=$(echo "$output" | sed 's@- path: "./@- path: "@' | sed "s@- path: \"@- path: \"./$dir/@")
  output=$(echo "$output" | sed 's@stack:@cabal:@')
  output=$(echo "$output" | sd '"([^:]+):lib"' '"lib:$1"')
  echo "$output"  >> $projectdir/hie.yaml
}
dojob haskell-overlays/reflex-packages/dep/cabal-macosx
dojob haskell-overlays/reflex-packages/dep/dependent-sum-universe-orphans
dojob haskell-overlays/reflex-packages/dep/gargoyle
dojob haskell-overlays/reflex-packages/dep/ghcjs-dom/ghcjs-dom
dojob haskell-overlays/reflex-packages/dep/ghcjs-dom/ghcjs-dom-jsffi
dojob haskell-overlays/reflex-packages/dep/ghcjs-dom/ghcjs-dom-jsaddle
dojob haskell-overlays/reflex-packages/dep/jsaddle
dojob haskell-overlays/reflex-packages/dep/jsaddle-dom
dojob haskell-overlays/reflex-packages/dep/reflex
dojob haskell-overlays/reflex-packages/dep/reflex-aeson-orphans
dojob haskell-overlays/reflex-packages/dep/reflex-dom
dojob haskell-overlays/reflex-packages/dep/reflex-todomvc
dojob haskell-overlays/reflex-packages/dep/universe
dojob haskell-overlays/reflex-packages/dep/patch
sd '\s+$' '' $projectdir/hie.yaml
cd $projectdir


# TEST
/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/universe/universe-base/src/Data/Universe/Class.hs
/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/universe/universe/src/Data/Universe.hs
/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/universe/universe-dependent-sum/src/Data/Universe/Some.hs

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/dependent-monoidal-map/src/Data/Dependent/Map/Monoidal.hs
/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/dependent-sum-universe-orphans/src/Data/Some/Universe/Orphans.hs
/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/cabal-macosx/Distribution/MacOSX.hs

# /home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/cabal-macosx/examples/wxHello/src/Main.hs
# /home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/cabal-macosx/examples/wxHello-cpp/src/Main.hs
# /home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/cabal-macosx/examples/gtkHello/src/Main.hs

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/reflex/src/Reflex.hs

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/patch/src/Data/Patch.hs

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/ghcjs-dom/ghcjs-dom/src/GHCJS/DOM/Debug.hs
# /home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/ghcjs-dom/ghcjs-dom-jsffi/src/Main.hs
# /home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/ghcjs-dom/ghcjs-dom-jsaddle/ghcjs-dom-jsaddle.cabal

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/jsaddle/jsaddle/src/Language/Javascript/JSaddle.hs

# /home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/jsaddle/jsaddle-webkitgtk/src/Language/Javascript/JSaddle/WebKitGTK.hs
/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/jsaddle/jsaddle-warp/src/Language/Javascript/JSaddle/Warp.hs
# /home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/jsaddle/jsaddle-wkwebview/src/Language/Javascript/JSaddle/WKWebView/Internal.hs
/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/jsaddle/jsaddle-clib/src/Language/Javascript/JSaddle/CLib/Internal.hsc
# /home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/jsaddle/jsaddle-webkit2gtk/src/Language/Javascript/JSaddle/WebKitGTK.hs

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/jsaddle-dom/src/JSDOM.hs

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/gargoyle/gargoyle/src/Gargoyle.hs
# /home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/gargoyle/gargoyle-postgresql-connect/src/Gargoyle/PostgreSQL/Connect.hs
/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/gargoyle/gargoyle-postgresql-nix/src/Gargoyle/PostgreSQL/Nix.hs

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/reflex-dom/chrome-test-utils/src/Test/Util/ChromeFlags.hs

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/reflex-dom/reflex-dom-core/src/Reflex/Dom/Main.hs

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/reflex-dom/reflex-dom/src/Reflex/Dom.hs

/home/srghma/projects/hie-bios/dist-newstyle/build/x86_64-linux/ghc-8.10.6/hie-bios-0.8.0/x/hie-bios/build/hie-bios/hie-bios debug haskell-overlays/reflex-packages/dep/reflex-todomvc/src/Reflex/TodoMVC.hs
