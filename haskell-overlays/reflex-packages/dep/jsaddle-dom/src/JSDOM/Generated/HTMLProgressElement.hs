{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLProgressElement
       (setValue, getValue, setMax, getMax, getPosition, getLabels,
        HTMLProgressElement(..), gTypeHTMLProgressElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.value Mozilla HTMLProgressElement.value documentation> 
setValue :: (MonadDOM m) => HTMLProgressElement -> Double -> m ()
setValue self val = liftDOM (self ^. jss "value" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.value Mozilla HTMLProgressElement.value documentation> 
getValue :: (MonadDOM m) => HTMLProgressElement -> m Double
getValue self = liftDOM ((self ^. js "value") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.max Mozilla HTMLProgressElement.max documentation> 
setMax :: (MonadDOM m) => HTMLProgressElement -> Double -> m ()
setMax self val = liftDOM (self ^. jss "max" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.max Mozilla HTMLProgressElement.max documentation> 
getMax :: (MonadDOM m) => HTMLProgressElement -> m Double
getMax self = liftDOM ((self ^. js "max") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.position Mozilla HTMLProgressElement.position documentation> 
getPosition :: (MonadDOM m) => HTMLProgressElement -> m Double
getPosition self
  = liftDOM ((self ^. js "position") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.labels Mozilla HTMLProgressElement.labels documentation> 
getLabels :: (MonadDOM m) => HTMLProgressElement -> m NodeList
getLabels self
  = liftDOM ((self ^. js "labels") >>= fromJSValUnchecked)
