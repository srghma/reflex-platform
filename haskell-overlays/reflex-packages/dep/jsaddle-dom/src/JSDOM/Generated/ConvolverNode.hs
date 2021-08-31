{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.ConvolverNode
       (setBuffer, getBuffer, getBufferUnsafe, getBufferUnchecked,
        setNormalize, getNormalize, ConvolverNode(..), gTypeConvolverNode)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
setBuffer ::
          (MonadDOM m) => ConvolverNode -> Maybe AudioBuffer -> m ()
setBuffer self val = liftDOM (self ^. jss "buffer" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
getBuffer :: (MonadDOM m) => ConvolverNode -> m (Maybe AudioBuffer)
getBuffer self = liftDOM ((self ^. js "buffer") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
getBufferUnsafe ::
                (MonadDOM m, HasCallStack) => ConvolverNode -> m AudioBuffer
getBufferUnsafe self
  = liftDOM
      (((self ^. js "buffer") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
getBufferUnchecked ::
                   (MonadDOM m) => ConvolverNode -> m AudioBuffer
getBufferUnchecked self
  = liftDOM ((self ^. js "buffer") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.normalize Mozilla ConvolverNode.normalize documentation> 
setNormalize :: (MonadDOM m) => ConvolverNode -> Bool -> m ()
setNormalize self val
  = liftDOM (self ^. jss "normalize" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.normalize Mozilla ConvolverNode.normalize documentation> 
getNormalize :: (MonadDOM m) => ConvolverNode -> m Bool
getNormalize self
  = liftDOM ((self ^. js "normalize") >>= valToBool)
