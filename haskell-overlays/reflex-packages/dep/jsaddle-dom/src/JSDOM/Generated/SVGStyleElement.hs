{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGStyleElement
       (setDisabled, getDisabled, setType, getType, setMedia, getMedia,
        setTitle, getTitle, SVGStyleElement(..), gTypeSVGStyleElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.disabled Mozilla SVGStyleElement.disabled documentation> 
setDisabled :: (MonadDOM m) => SVGStyleElement -> Bool -> m ()
setDisabled self val
  = liftDOM (self ^. jss "disabled" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.disabled Mozilla SVGStyleElement.disabled documentation> 
getDisabled :: (MonadDOM m) => SVGStyleElement -> m Bool
getDisabled self = liftDOM ((self ^. js "disabled") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.type Mozilla SVGStyleElement.type documentation> 
setType ::
        (MonadDOM m, ToJSString val) => SVGStyleElement -> val -> m ()
setType self val = liftDOM (self ^. jss "type" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.type Mozilla SVGStyleElement.type documentation> 
getType ::
        (MonadDOM m, FromJSString result) => SVGStyleElement -> m result
getType self = liftDOM ((self ^. js "type") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.media Mozilla SVGStyleElement.media documentation> 
setMedia ::
         (MonadDOM m, ToJSString val) => SVGStyleElement -> val -> m ()
setMedia self val = liftDOM (self ^. jss "media" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.media Mozilla SVGStyleElement.media documentation> 
getMedia ::
         (MonadDOM m, FromJSString result) => SVGStyleElement -> m result
getMedia self
  = liftDOM ((self ^. js "media") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.title Mozilla SVGStyleElement.title documentation> 
setTitle ::
         (MonadDOM m, ToJSString val) => SVGStyleElement -> val -> m ()
setTitle self val = liftDOM (self ^. jss "title" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.title Mozilla SVGStyleElement.title documentation> 
getTitle ::
         (MonadDOM m, FromJSString result) => SVGStyleElement -> m result
getTitle self
  = liftDOM ((self ^. js "title") >>= fromJSValUnchecked)
