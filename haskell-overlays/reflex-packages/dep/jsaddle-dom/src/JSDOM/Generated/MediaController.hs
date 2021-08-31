{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaController
       (newMediaController, play, pause, unpause, getBuffered,
        getSeekable, getDuration, setCurrentTime, getCurrentTime,
        getPaused, getPlayed, getPlaybackState, setDefaultPlaybackRate,
        getDefaultPlaybackRate, setPlaybackRate, getPlaybackRate,
        setVolume, getVolume, setMuted, getMuted, MediaController(..),
        gTypeMediaController)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController Mozilla MediaController documentation> 
newMediaController :: (MonadDOM m) => m MediaController
newMediaController
  = liftDOM (MediaController <$> new (jsg "MediaController") ())

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.play Mozilla MediaController.play documentation> 
play :: (MonadDOM m) => MediaController -> m ()
play self = liftDOM (void (self ^. jsf "play" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.pause Mozilla MediaController.pause documentation> 
pause :: (MonadDOM m) => MediaController -> m ()
pause self = liftDOM (void (self ^. jsf "pause" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.unpause Mozilla MediaController.unpause documentation> 
unpause :: (MonadDOM m) => MediaController -> m ()
unpause self = liftDOM (void (self ^. jsf "unpause" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.buffered Mozilla MediaController.buffered documentation> 
getBuffered :: (MonadDOM m) => MediaController -> m TimeRanges
getBuffered self
  = liftDOM ((self ^. js "buffered") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.seekable Mozilla MediaController.seekable documentation> 
getSeekable :: (MonadDOM m) => MediaController -> m TimeRanges
getSeekable self
  = liftDOM ((self ^. js "seekable") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.duration Mozilla MediaController.duration documentation> 
getDuration :: (MonadDOM m) => MediaController -> m Double
getDuration self
  = liftDOM ((self ^. js "duration") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.currentTime Mozilla MediaController.currentTime documentation> 
setCurrentTime :: (MonadDOM m) => MediaController -> Double -> m ()
setCurrentTime self val
  = liftDOM (self ^. jss "currentTime" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.currentTime Mozilla MediaController.currentTime documentation> 
getCurrentTime :: (MonadDOM m) => MediaController -> m Double
getCurrentTime self
  = liftDOM ((self ^. js "currentTime") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.paused Mozilla MediaController.paused documentation> 
getPaused :: (MonadDOM m) => MediaController -> m Bool
getPaused self = liftDOM ((self ^. js "paused") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.played Mozilla MediaController.played documentation> 
getPlayed :: (MonadDOM m) => MediaController -> m TimeRanges
getPlayed self
  = liftDOM ((self ^. js "played") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.playbackState Mozilla MediaController.playbackState documentation> 
getPlaybackState ::
                 (MonadDOM m, FromJSString result) => MediaController -> m result
getPlaybackState self
  = liftDOM ((self ^. js "playbackState") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.defaultPlaybackRate Mozilla MediaController.defaultPlaybackRate documentation> 
setDefaultPlaybackRate ::
                       (MonadDOM m) => MediaController -> Double -> m ()
setDefaultPlaybackRate self val
  = liftDOM (self ^. jss "defaultPlaybackRate" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.defaultPlaybackRate Mozilla MediaController.defaultPlaybackRate documentation> 
getDefaultPlaybackRate ::
                       (MonadDOM m) => MediaController -> m Double
getDefaultPlaybackRate self
  = liftDOM ((self ^. js "defaultPlaybackRate") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.playbackRate Mozilla MediaController.playbackRate documentation> 
setPlaybackRate ::
                (MonadDOM m) => MediaController -> Double -> m ()
setPlaybackRate self val
  = liftDOM (self ^. jss "playbackRate" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.playbackRate Mozilla MediaController.playbackRate documentation> 
getPlaybackRate :: (MonadDOM m) => MediaController -> m Double
getPlaybackRate self
  = liftDOM ((self ^. js "playbackRate") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.volume Mozilla MediaController.volume documentation> 
setVolume :: (MonadDOM m) => MediaController -> Double -> m ()
setVolume self val = liftDOM (self ^. jss "volume" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.volume Mozilla MediaController.volume documentation> 
getVolume :: (MonadDOM m) => MediaController -> m Double
getVolume self = liftDOM ((self ^. js "volume") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.muted Mozilla MediaController.muted documentation> 
setMuted :: (MonadDOM m) => MediaController -> Bool -> m ()
setMuted self val = liftDOM (self ^. jss "muted" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaController.muted Mozilla MediaController.muted documentation> 
getMuted :: (MonadDOM m) => MediaController -> m Bool
getMuted self = liftDOM ((self ^. js "muted") >>= valToBool)
