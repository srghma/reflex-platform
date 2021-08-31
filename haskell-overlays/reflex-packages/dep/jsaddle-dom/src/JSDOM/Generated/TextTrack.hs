{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.TextTrack
       (addCue, removeCue, addRegion, removeRegion, getId, setKind,
        getKind, getLabel, setLanguage, getLanguage,
        getInBandMetadataTrackDispatchType, setMode, getMode, getCues,
        getCuesUnsafe, getCuesUnchecked, getActiveCues,
        getActiveCuesUnsafe, getActiveCuesUnchecked, cueChange, getRegions,
        getSourceBuffer, TextTrack(..), gTypeTextTrack)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.addCue Mozilla TextTrack.addCue documentation> 
addCue ::
       (MonadDOM m, IsTextTrackCue cue) => TextTrack -> cue -> m ()
addCue self cue
  = liftDOM (void (self ^. jsf "addCue" [toJSVal cue]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.removeCue Mozilla TextTrack.removeCue documentation> 
removeCue ::
          (MonadDOM m, IsTextTrackCue cue) => TextTrack -> cue -> m ()
removeCue self cue
  = liftDOM (void (self ^. jsf "removeCue" [toJSVal cue]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.addRegion Mozilla TextTrack.addRegion documentation> 
addRegion :: (MonadDOM m) => TextTrack -> Maybe VTTRegion -> m ()
addRegion self region
  = liftDOM (void (self ^. jsf "addRegion" [toJSVal region]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.removeRegion Mozilla TextTrack.removeRegion documentation> 
removeRegion ::
             (MonadDOM m) => TextTrack -> Maybe VTTRegion -> m ()
removeRegion self region
  = liftDOM (void (self ^. jsf "removeRegion" [toJSVal region]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.id Mozilla TextTrack.id documentation> 
getId :: (MonadDOM m, FromJSString result) => TextTrack -> m result
getId self = liftDOM ((self ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.kind Mozilla TextTrack.kind documentation> 
setKind :: (MonadDOM m) => TextTrack -> TextTrackKind -> m ()
setKind self val = liftDOM (self ^. jss "kind" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.kind Mozilla TextTrack.kind documentation> 
getKind :: (MonadDOM m) => TextTrack -> m TextTrackKind
getKind self = liftDOM ((self ^. js "kind") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.label Mozilla TextTrack.label documentation> 
getLabel ::
         (MonadDOM m, FromJSString result) => TextTrack -> m result
getLabel self
  = liftDOM ((self ^. js "label") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.language Mozilla TextTrack.language documentation> 
setLanguage ::
            (MonadDOM m, ToJSString val) => TextTrack -> val -> m ()
setLanguage self val
  = liftDOM (self ^. jss "language" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.language Mozilla TextTrack.language documentation> 
getLanguage ::
            (MonadDOM m, FromJSString result) => TextTrack -> m result
getLanguage self
  = liftDOM ((self ^. js "language") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.inBandMetadataTrackDispatchType Mozilla TextTrack.inBandMetadataTrackDispatchType documentation> 
getInBandMetadataTrackDispatchType ::
                                   (MonadDOM m, FromJSString result) => TextTrack -> m result
getInBandMetadataTrackDispatchType self
  = liftDOM
      ((self ^. js "inBandMetadataTrackDispatchType") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.mode Mozilla TextTrack.mode documentation> 
setMode :: (MonadDOM m) => TextTrack -> TextTrackMode -> m ()
setMode self val = liftDOM (self ^. jss "mode" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.mode Mozilla TextTrack.mode documentation> 
getMode :: (MonadDOM m) => TextTrack -> m TextTrackMode
getMode self = liftDOM ((self ^. js "mode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.cues Mozilla TextTrack.cues documentation> 
getCues :: (MonadDOM m) => TextTrack -> m (Maybe TextTrackCueList)
getCues self = liftDOM ((self ^. js "cues") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.cues Mozilla TextTrack.cues documentation> 
getCuesUnsafe ::
              (MonadDOM m, HasCallStack) => TextTrack -> m TextTrackCueList
getCuesUnsafe self
  = liftDOM
      (((self ^. js "cues") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.cues Mozilla TextTrack.cues documentation> 
getCuesUnchecked :: (MonadDOM m) => TextTrack -> m TextTrackCueList
getCuesUnchecked self
  = liftDOM ((self ^. js "cues") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.activeCues Mozilla TextTrack.activeCues documentation> 
getActiveCues ::
              (MonadDOM m) => TextTrack -> m (Maybe TextTrackCueList)
getActiveCues self
  = liftDOM ((self ^. js "activeCues") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.activeCues Mozilla TextTrack.activeCues documentation> 
getActiveCuesUnsafe ::
                    (MonadDOM m, HasCallStack) => TextTrack -> m TextTrackCueList
getActiveCuesUnsafe self
  = liftDOM
      (((self ^. js "activeCues") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.activeCues Mozilla TextTrack.activeCues documentation> 
getActiveCuesUnchecked ::
                       (MonadDOM m) => TextTrack -> m TextTrackCueList
getActiveCuesUnchecked self
  = liftDOM ((self ^. js "activeCues") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.oncuechange Mozilla TextTrack.oncuechange documentation> 
cueChange :: EventName TextTrack Event
cueChange = unsafeEventName (toJSString "cuechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.regions Mozilla TextTrack.regions documentation> 
getRegions :: (MonadDOM m) => TextTrack -> m VTTRegionList
getRegions self
  = liftDOM ((self ^. js "regions") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrack.sourceBuffer Mozilla TextTrack.sourceBuffer documentation> 
getSourceBuffer :: (MonadDOM m) => TextTrack -> m SourceBuffer
getSourceBuffer self
  = liftDOM ((self ^. js "sourceBuffer") >>= fromJSValUnchecked)
