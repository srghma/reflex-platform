{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.VideoPlaybackQuality
       (getCreationTime, getTotalVideoFrames, getDroppedVideoFrames,
        getCorruptedVideoFrames, getTotalFrameDelay,
        VideoPlaybackQuality(..), gTypeVideoPlaybackQuality)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.creationTime Mozilla VideoPlaybackQuality.creationTime documentation> 
getCreationTime :: (MonadDOM m) => VideoPlaybackQuality -> m Double
getCreationTime self
  = liftDOM ((self ^. js "creationTime") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.totalVideoFrames Mozilla VideoPlaybackQuality.totalVideoFrames documentation> 
getTotalVideoFrames ::
                    (MonadDOM m) => VideoPlaybackQuality -> m Word
getTotalVideoFrames self
  = liftDOM
      (round <$> ((self ^. js "totalVideoFrames") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.droppedVideoFrames Mozilla VideoPlaybackQuality.droppedVideoFrames documentation> 
getDroppedVideoFrames ::
                      (MonadDOM m) => VideoPlaybackQuality -> m Word
getDroppedVideoFrames self
  = liftDOM
      (round <$> ((self ^. js "droppedVideoFrames") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.corruptedVideoFrames Mozilla VideoPlaybackQuality.corruptedVideoFrames documentation> 
getCorruptedVideoFrames ::
                        (MonadDOM m) => VideoPlaybackQuality -> m Word
getCorruptedVideoFrames self
  = liftDOM
      (round <$> ((self ^. js "corruptedVideoFrames") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoPlaybackQuality.totalFrameDelay Mozilla VideoPlaybackQuality.totalFrameDelay documentation> 
getTotalFrameDelay ::
                   (MonadDOM m) => VideoPlaybackQuality -> m Double
getTotalFrameDelay self
  = liftDOM ((self ^. js "totalFrameDelay") >>= valToNumber)
