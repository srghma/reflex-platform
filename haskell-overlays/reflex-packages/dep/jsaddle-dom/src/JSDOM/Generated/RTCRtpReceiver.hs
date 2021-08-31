{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.RTCRtpReceiver
       (getParameters, getParameters_, getTrack, RTCRtpReceiver(..),
        gTypeRTCRtpReceiver)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpReceiver.getParameters Mozilla RTCRtpReceiver.getParameters documentation> 
getParameters ::
              (MonadDOM m) => RTCRtpReceiver -> m RTCRtpParameters
getParameters self
  = liftDOM ((self ^. jsf "getParameters" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpReceiver.getParameters Mozilla RTCRtpReceiver.getParameters documentation> 
getParameters_ :: (MonadDOM m) => RTCRtpReceiver -> m ()
getParameters_ self
  = liftDOM (void (self ^. jsf "getParameters" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCRtpReceiver.track Mozilla RTCRtpReceiver.track documentation> 
getTrack :: (MonadDOM m) => RTCRtpReceiver -> m MediaStreamTrack
getTrack self
  = liftDOM ((self ^. js "track") >>= fromJSValUnchecked)
