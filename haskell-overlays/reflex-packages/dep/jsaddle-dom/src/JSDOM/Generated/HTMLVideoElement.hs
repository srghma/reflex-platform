{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLVideoElement
       (webkitEnterFullscreen, webkitExitFullscreen,
        webkitEnterFullScreen, webkitExitFullScreen,
        webkitSupportsPresentationMode, webkitSupportsPresentationMode_,
        webkitSetPresentationMode, setWidth, getWidth, setHeight,
        getHeight, getVideoWidth, getVideoHeight, setPoster, getPoster,
        setPlaysInline, getPlaysInline, getWebkitSupportsFullscreen,
        getWebkitDisplayingFullscreen,
        setWebkitWirelessVideoPlaybackDisabled,
        getWebkitWirelessVideoPlaybackDisabled, getWebkitDecodedFrameCount,
        getWebkitDroppedFrameCount, getWebkitPresentationMode,
        HTMLVideoElement(..), gTypeHTMLVideoElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitEnterFullscreen Mozilla HTMLVideoElement.webkitEnterFullscreen documentation> 
webkitEnterFullscreen :: (MonadDOM m) => HTMLVideoElement -> m ()
webkitEnterFullscreen self
  = liftDOM (void (self ^. jsf "webkitEnterFullscreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitExitFullscreen Mozilla HTMLVideoElement.webkitExitFullscreen documentation> 
webkitExitFullscreen :: (MonadDOM m) => HTMLVideoElement -> m ()
webkitExitFullscreen self
  = liftDOM (void (self ^. jsf "webkitExitFullscreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitEnterFullScreen Mozilla HTMLVideoElement.webkitEnterFullScreen documentation> 
webkitEnterFullScreen :: (MonadDOM m) => HTMLVideoElement -> m ()
webkitEnterFullScreen self
  = liftDOM (void (self ^. jsf "webkitEnterFullScreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitExitFullScreen Mozilla HTMLVideoElement.webkitExitFullScreen documentation> 
webkitExitFullScreen :: (MonadDOM m) => HTMLVideoElement -> m ()
webkitExitFullScreen self
  = liftDOM (void (self ^. jsf "webkitExitFullScreen" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitSupportsPresentationMode Mozilla HTMLVideoElement.webkitSupportsPresentationMode documentation> 
webkitSupportsPresentationMode ::
                               (MonadDOM m) => HTMLVideoElement -> VideoPresentationMode -> m Bool
webkitSupportsPresentationMode self mode
  = liftDOM
      ((self ^. jsf "webkitSupportsPresentationMode" [toJSVal mode]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitSupportsPresentationMode Mozilla HTMLVideoElement.webkitSupportsPresentationMode documentation> 
webkitSupportsPresentationMode_ ::
                                (MonadDOM m) => HTMLVideoElement -> VideoPresentationMode -> m ()
webkitSupportsPresentationMode_ self mode
  = liftDOM
      (void
         (self ^. jsf "webkitSupportsPresentationMode" [toJSVal mode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitSetPresentationMode Mozilla HTMLVideoElement.webkitSetPresentationMode documentation> 
webkitSetPresentationMode ::
                          (MonadDOM m) => HTMLVideoElement -> VideoPresentationMode -> m ()
webkitSetPresentationMode self mode
  = liftDOM
      (void (self ^. jsf "webkitSetPresentationMode" [toJSVal mode]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.width Mozilla HTMLVideoElement.width documentation> 
setWidth :: (MonadDOM m) => HTMLVideoElement -> Word -> m ()
setWidth self val = liftDOM (self ^. jss "width" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.width Mozilla HTMLVideoElement.width documentation> 
getWidth :: (MonadDOM m) => HTMLVideoElement -> m Word
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.height Mozilla HTMLVideoElement.height documentation> 
setHeight :: (MonadDOM m) => HTMLVideoElement -> Word -> m ()
setHeight self val = liftDOM (self ^. jss "height" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.height Mozilla HTMLVideoElement.height documentation> 
getHeight :: (MonadDOM m) => HTMLVideoElement -> m Word
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.videoWidth Mozilla HTMLVideoElement.videoWidth documentation> 
getVideoWidth :: (MonadDOM m) => HTMLVideoElement -> m Word
getVideoWidth self
  = liftDOM (round <$> ((self ^. js "videoWidth") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.videoHeight Mozilla HTMLVideoElement.videoHeight documentation> 
getVideoHeight :: (MonadDOM m) => HTMLVideoElement -> m Word
getVideoHeight self
  = liftDOM (round <$> ((self ^. js "videoHeight") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.poster Mozilla HTMLVideoElement.poster documentation> 
setPoster ::
          (MonadDOM m, ToJSString val) => HTMLVideoElement -> val -> m ()
setPoster self val = liftDOM (self ^. jss "poster" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.poster Mozilla HTMLVideoElement.poster documentation> 
getPoster ::
          (MonadDOM m, FromJSString result) => HTMLVideoElement -> m result
getPoster self
  = liftDOM ((self ^. js "poster") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.playsInline Mozilla HTMLVideoElement.playsInline documentation> 
setPlaysInline :: (MonadDOM m) => HTMLVideoElement -> Bool -> m ()
setPlaysInline self val
  = liftDOM (self ^. jss "playsInline" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.playsInline Mozilla HTMLVideoElement.playsInline documentation> 
getPlaysInline :: (MonadDOM m) => HTMLVideoElement -> m Bool
getPlaysInline self
  = liftDOM ((self ^. js "playsInline") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitSupportsFullscreen Mozilla HTMLVideoElement.webkitSupportsFullscreen documentation> 
getWebkitSupportsFullscreen ::
                            (MonadDOM m) => HTMLVideoElement -> m Bool
getWebkitSupportsFullscreen self
  = liftDOM ((self ^. js "webkitSupportsFullscreen") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitDisplayingFullscreen Mozilla HTMLVideoElement.webkitDisplayingFullscreen documentation> 
getWebkitDisplayingFullscreen ::
                              (MonadDOM m) => HTMLVideoElement -> m Bool
getWebkitDisplayingFullscreen self
  = liftDOM ((self ^. js "webkitDisplayingFullscreen") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitWirelessVideoPlaybackDisabled Mozilla HTMLVideoElement.webkitWirelessVideoPlaybackDisabled documentation> 
setWebkitWirelessVideoPlaybackDisabled ::
                                       (MonadDOM m) => HTMLVideoElement -> Bool -> m ()
setWebkitWirelessVideoPlaybackDisabled self val
  = liftDOM
      (self ^. jss "webkitWirelessVideoPlaybackDisabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitWirelessVideoPlaybackDisabled Mozilla HTMLVideoElement.webkitWirelessVideoPlaybackDisabled documentation> 
getWebkitWirelessVideoPlaybackDisabled ::
                                       (MonadDOM m) => HTMLVideoElement -> m Bool
getWebkitWirelessVideoPlaybackDisabled self
  = liftDOM
      ((self ^. js "webkitWirelessVideoPlaybackDisabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitDecodedFrameCount Mozilla HTMLVideoElement.webkitDecodedFrameCount documentation> 
getWebkitDecodedFrameCount ::
                           (MonadDOM m) => HTMLVideoElement -> m Word
getWebkitDecodedFrameCount self
  = liftDOM
      (round <$>
         ((self ^. js "webkitDecodedFrameCount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitDroppedFrameCount Mozilla HTMLVideoElement.webkitDroppedFrameCount documentation> 
getWebkitDroppedFrameCount ::
                           (MonadDOM m) => HTMLVideoElement -> m Word
getWebkitDroppedFrameCount self
  = liftDOM
      (round <$>
         ((self ^. js "webkitDroppedFrameCount") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLVideoElement.webkitPresentationMode Mozilla HTMLVideoElement.webkitPresentationMode documentation> 
getWebkitPresentationMode ::
                          (MonadDOM m) => HTMLVideoElement -> m VideoPresentationMode
getWebkitPresentationMode self
  = liftDOM
      ((self ^. js "webkitPresentationMode") >>= fromJSValUnchecked)
