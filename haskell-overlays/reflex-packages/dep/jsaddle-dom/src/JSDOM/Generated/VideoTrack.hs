{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.VideoTrack
       (getId, setKind, getKind, getLabel, setLanguage, getLanguage,
        setSelected, getSelected, getSourceBuffer, VideoTrack(..),
        gTypeVideoTrack)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import qualified Prelude (error)
import Data.Typeable (Typeable)
import Data.Traversable (mapM)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, asyncFunction, new, array, jsUndefined, (!), (!!))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import JSDOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import JSDOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.id Mozilla VideoTrack.id documentation> 
getId ::
      (MonadDOM m, FromJSString result) => VideoTrack -> m result
getId self = liftDOM ((self ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.kind Mozilla VideoTrack.kind documentation> 
setKind ::
        (MonadDOM m, ToJSString val) => VideoTrack -> val -> m ()
setKind self val = liftDOM (self ^. jss "kind" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.kind Mozilla VideoTrack.kind documentation> 
getKind ::
        (MonadDOM m, FromJSString result) => VideoTrack -> m result
getKind self = liftDOM ((self ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.label Mozilla VideoTrack.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => VideoTrack -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.language Mozilla VideoTrack.language documentation> 
setLanguage ::
            (MonadDOM m, ToJSString val) => VideoTrack -> val -> m ()
setLanguage self val
  = liftDOM (self ^. jss "language" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.language Mozilla VideoTrack.language documentation> 
getLanguage ::
            (MonadDOM m, FromJSString result) => VideoTrack -> m result
getLanguage self
  = liftDOM ((self ^. js "language") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.selected Mozilla VideoTrack.selected documentation> 
setSelected :: (MonadDOM m) => VideoTrack -> Bool -> m ()
setSelected self val
  = liftDOM (self ^. jss "selected" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.selected Mozilla VideoTrack.selected documentation> 
getSelected :: (MonadDOM m) => VideoTrack -> m Bool
getSelected self = liftDOM ((self ^. js "selected") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrack.sourceBuffer Mozilla VideoTrack.sourceBuffer documentation> 
getSourceBuffer :: (MonadDOM m) => VideoTrack -> m SourceBuffer
getSourceBuffer self
  = liftDOM ((self ^. js "sourceBuffer") >>= fromJSValUnchecked)
