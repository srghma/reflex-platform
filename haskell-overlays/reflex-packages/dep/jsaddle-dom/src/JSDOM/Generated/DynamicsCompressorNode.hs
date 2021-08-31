{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.DynamicsCompressorNode
       (getThreshold, getKnee, getRatio, getReduction, getAttack,
        getRelease, DynamicsCompressorNode(..),
        gTypeDynamicsCompressorNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.threshold Mozilla DynamicsCompressorNode.threshold documentation> 
getThreshold ::
             (MonadDOM m) => DynamicsCompressorNode -> m AudioParam
getThreshold self
  = liftDOM ((self ^. js "threshold") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.knee Mozilla DynamicsCompressorNode.knee documentation> 
getKnee :: (MonadDOM m) => DynamicsCompressorNode -> m AudioParam
getKnee self = liftDOM ((self ^. js "knee") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.ratio Mozilla DynamicsCompressorNode.ratio documentation> 
getRatio :: (MonadDOM m) => DynamicsCompressorNode -> m AudioParam
getRatio self
  = liftDOM ((self ^. js "ratio") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.reduction Mozilla DynamicsCompressorNode.reduction documentation> 
getReduction ::
             (MonadDOM m) => DynamicsCompressorNode -> m AudioParam
getReduction self
  = liftDOM ((self ^. js "reduction") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.attack Mozilla DynamicsCompressorNode.attack documentation> 
getAttack :: (MonadDOM m) => DynamicsCompressorNode -> m AudioParam
getAttack self
  = liftDOM ((self ^. js "attack") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DynamicsCompressorNode.release Mozilla DynamicsCompressorNode.release documentation> 
getRelease ::
           (MonadDOM m) => DynamicsCompressorNode -> m AudioParam
getRelease self
  = liftDOM ((self ^. js "release") >>= fromJSValUnchecked)
