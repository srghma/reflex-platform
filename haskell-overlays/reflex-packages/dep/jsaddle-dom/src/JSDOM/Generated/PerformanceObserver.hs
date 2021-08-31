{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.PerformanceObserver
       (newPerformanceObserver, observe, disconnect,
        PerformanceObserver(..), gTypePerformanceObserver)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver Mozilla PerformanceObserver documentation> 
newPerformanceObserver ::
                       (MonadDOM m) =>
                         PerformanceObserverCallback -> m PerformanceObserver
newPerformanceObserver callback
  = liftDOM
      (PerformanceObserver <$>
         new (jsg "PerformanceObserver") [toJSVal callback])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver.observe Mozilla PerformanceObserver.observe documentation> 
observe ::
        (MonadDOM m) =>
          PerformanceObserver -> PerformanceObserverInit -> m ()
observe self options
  = liftDOM (void (self ^. jsf "observe" [toJSVal options]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserver.disconnect Mozilla PerformanceObserver.disconnect documentation> 
disconnect :: (MonadDOM m) => PerformanceObserver -> m ()
disconnect self = liftDOM (void (self ^. jsf "disconnect" ()))
