{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGLContextEvent
       (newWebGLContextEvent, getStatusMessage, WebGLContextEvent(..),
        gTypeWebGLContextEvent)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextEvent Mozilla WebGLContextEvent documentation> 
newWebGLContextEvent ::
                     (MonadDOM m, ToJSString type') =>
                       type' -> Maybe WebGLContextEventInit -> m WebGLContextEvent
newWebGLContextEvent type' eventInit
  = liftDOM
      (WebGLContextEvent <$>
         new (jsg "WebGLContextEvent") [toJSVal type', toJSVal eventInit])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextEvent.statusMessage Mozilla WebGLContextEvent.statusMessage documentation> 
getStatusMessage ::
                 (MonadDOM m, FromJSString result) => WebGLContextEvent -> m result
getStatusMessage self
  = liftDOM ((self ^. js "statusMessage") >>= fromJSValUnchecked)
