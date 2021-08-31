{-# LANGUAGE OverloadedStrings #-}

{-# LANGUAGE PartialTypeSignatures #-}

-- standing for ‘text-1.2.3.1:Data.Text.Internal.Text
--               -> HydrationDomBuilderT
--                    GhcjsDomSpace DomTimeline (DomCoreWidget x) ()’

import Reflex.Dom
-- (forall x. Widget x ()) -> IO ()
main = (mainWidget)  $ text "Hello, world!"
