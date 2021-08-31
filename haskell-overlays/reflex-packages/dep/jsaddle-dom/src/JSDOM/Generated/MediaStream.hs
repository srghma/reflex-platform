{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaStream
       (newMediaStream, newMediaStream', newMediaStream'', getAudioTracks,
        getAudioTracks_, getVideoTracks, getVideoTracks_, getTracks,
        getTracks_, getTrackById, getTrackById_, addTrack, removeTrack,
        clone, clone_, getId, getActive, addTrackEvent, removeTrackEvent,
        active, inactive, MediaStream(..), gTypeMediaStream)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
newMediaStream :: (MonadDOM m) => m MediaStream
newMediaStream
  = liftDOM (MediaStream <$> new (jsg "MediaStream") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
newMediaStream' :: (MonadDOM m) => MediaStream -> m MediaStream
newMediaStream' stream
  = liftDOM
      (MediaStream <$> new (jsg "MediaStream") [toJSVal stream])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream Mozilla webkitMediaStream documentation> 
newMediaStream'' ::
                 (MonadDOM m, IsMediaStreamTrack tracks) =>
                   [tracks] -> m MediaStream
newMediaStream'' tracks
  = liftDOM
      (MediaStream <$> new (jsg "MediaStream") [toJSVal (array tracks)])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getAudioTracks Mozilla webkitMediaStream.getAudioTracks documentation> 
getAudioTracks ::
               (MonadDOM m) => MediaStream -> m [MediaStreamTrack]
getAudioTracks self
  = liftDOM
      ((self ^. jsf "getAudioTracks" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getAudioTracks Mozilla webkitMediaStream.getAudioTracks documentation> 
getAudioTracks_ :: (MonadDOM m) => MediaStream -> m ()
getAudioTracks_ self
  = liftDOM (void (self ^. jsf "getAudioTracks" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getVideoTracks Mozilla webkitMediaStream.getVideoTracks documentation> 
getVideoTracks ::
               (MonadDOM m) => MediaStream -> m [MediaStreamTrack]
getVideoTracks self
  = liftDOM
      ((self ^. jsf "getVideoTracks" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getVideoTracks Mozilla webkitMediaStream.getVideoTracks documentation> 
getVideoTracks_ :: (MonadDOM m) => MediaStream -> m ()
getVideoTracks_ self
  = liftDOM (void (self ^. jsf "getVideoTracks" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getTracks Mozilla webkitMediaStream.getTracks documentation> 
getTracks :: (MonadDOM m) => MediaStream -> m [MediaStreamTrack]
getTracks self
  = liftDOM ((self ^. jsf "getTracks" ()) >>= fromJSArrayUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getTracks Mozilla webkitMediaStream.getTracks documentation> 
getTracks_ :: (MonadDOM m) => MediaStream -> m ()
getTracks_ self = liftDOM (void (self ^. jsf "getTracks" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getTrackById Mozilla webkitMediaStream.getTrackById documentation> 
getTrackById ::
             (MonadDOM m, ToJSString trackId) =>
               MediaStream -> trackId -> m MediaStreamTrack
getTrackById self trackId
  = liftDOM
      ((self ^. jsf "getTrackById" [toJSVal trackId]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.getTrackById Mozilla webkitMediaStream.getTrackById documentation> 
getTrackById_ ::
              (MonadDOM m, ToJSString trackId) => MediaStream -> trackId -> m ()
getTrackById_ self trackId
  = liftDOM (void (self ^. jsf "getTrackById" [toJSVal trackId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.addTrack Mozilla webkitMediaStream.addTrack documentation> 
addTrack ::
         (MonadDOM m, IsMediaStreamTrack track) =>
           MediaStream -> track -> m ()
addTrack self track
  = liftDOM (void (self ^. jsf "addTrack" [toJSVal track]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.removeTrack Mozilla webkitMediaStream.removeTrack documentation> 
removeTrack ::
            (MonadDOM m, IsMediaStreamTrack track) =>
              MediaStream -> track -> m ()
removeTrack self track
  = liftDOM (void (self ^. jsf "removeTrack" [toJSVal track]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.clone Mozilla webkitMediaStream.clone documentation> 
clone :: (MonadDOM m) => MediaStream -> m MediaStream
clone self
  = liftDOM ((self ^. jsf "clone" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.clone Mozilla webkitMediaStream.clone documentation> 
clone_ :: (MonadDOM m) => MediaStream -> m ()
clone_ self = liftDOM (void (self ^. jsf "clone" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.id Mozilla webkitMediaStream.id documentation> 
getId ::
      (MonadDOM m, FromJSString result) => MediaStream -> m result
getId self = liftDOM ((self ^. js "id") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.active Mozilla webkitMediaStream.active documentation> 
getActive :: (MonadDOM m) => MediaStream -> m Bool
getActive self = liftDOM ((self ^. js "active") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.onaddtrack Mozilla webkitMediaStream.onaddtrack documentation> 
addTrackEvent :: EventName MediaStream Event
addTrackEvent = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.onremovetrack Mozilla webkitMediaStream.onremovetrack documentation> 
removeTrackEvent :: EventName MediaStream Event
removeTrackEvent = unsafeEventName (toJSString "removetrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.onactive Mozilla webkitMediaStream.onactive documentation> 
active :: EventName MediaStream Event
active = unsafeEventName (toJSString "active")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/webkitMediaStream.oninactive Mozilla webkitMediaStream.oninactive documentation> 
inactive :: EventName MediaStream Event
inactive = unsafeEventName (toJSString "inactive")
