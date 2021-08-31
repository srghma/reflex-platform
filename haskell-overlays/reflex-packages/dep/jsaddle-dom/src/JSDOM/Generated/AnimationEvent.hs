{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.AnimationEvent
       (newAnimationEvent, getAnimationName, getElapsedTime,
        AnimationEvent(..), gTypeAnimationEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent Mozilla AnimationEvent documentation> 
newAnimationEvent ::
                  (MonadDOM m, ToJSString type') =>
                    type' -> Maybe AnimationEventInit -> m AnimationEvent
newAnimationEvent type' animationEventInitDict
  = liftDOM
      (AnimationEvent <$>
         new (jsg "AnimationEvent")
           [toJSVal type', toJSVal animationEventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent.animationName Mozilla AnimationEvent.animationName documentation> 
getAnimationName ::
                 (MonadDOM m, FromJSString result) => AnimationEvent -> m result
getAnimationName self
  = liftDOM ((self ^. js "animationName") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent.elapsedTime Mozilla AnimationEvent.elapsedTime documentation> 
getElapsedTime :: (MonadDOM m) => AnimationEvent -> m Double
getElapsedTime self
  = liftDOM ((self ^. js "elapsedTime") >>= valToNumber)
