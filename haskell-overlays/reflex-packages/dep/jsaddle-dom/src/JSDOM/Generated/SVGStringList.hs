{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGStringList
       (clear, initialize, initialize_, getItem, getItem_,
        insertItemBefore, insertItemBefore_, replaceItem, replaceItem_,
        removeItem, removeItem_, appendItem, appendItem_, getNumberOfItems,
        SVGStringList(..), gTypeSVGStringList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.clear Mozilla SVGStringList.clear documentation> 
clear :: (MonadDOM m) => SVGStringList -> m ()
clear self = liftDOM (void (self ^. jsf "clear" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.initialize Mozilla SVGStringList.initialize documentation> 
initialize ::
           (MonadDOM m, ToJSString item, FromJSString result) =>
             SVGStringList -> item -> m result
initialize self item
  = liftDOM
      ((self ^. jsf "initialize" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.initialize Mozilla SVGStringList.initialize documentation> 
initialize_ ::
            (MonadDOM m, ToJSString item) => SVGStringList -> item -> m ()
initialize_ self item
  = liftDOM (void (self ^. jsf "initialize" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.getItem Mozilla SVGStringList.getItem documentation> 
getItem ::
        (MonadDOM m, FromJSString result) =>
          SVGStringList -> Word -> m result
getItem self index
  = liftDOM
      ((self ^. jsf "getItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.getItem Mozilla SVGStringList.getItem documentation> 
getItem_ :: (MonadDOM m) => SVGStringList -> Word -> m ()
getItem_ self index
  = liftDOM (void (self ^. jsf "getItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.insertItemBefore Mozilla SVGStringList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadDOM m, ToJSString item, FromJSString result) =>
                   SVGStringList -> item -> Word -> m result
insertItemBefore self item index
  = liftDOM
      ((self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.insertItemBefore Mozilla SVGStringList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadDOM m, ToJSString item) =>
                    SVGStringList -> item -> Word -> m ()
insertItemBefore_ self item index
  = liftDOM
      (void
         (self ^. jsf "insertItemBefore" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.replaceItem Mozilla SVGStringList.replaceItem documentation> 
replaceItem ::
            (MonadDOM m, ToJSString item, FromJSString result) =>
              SVGStringList -> item -> Word -> m result
replaceItem self item index
  = liftDOM
      ((self ^. jsf "replaceItem" [toJSVal item, toJSVal index]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.replaceItem Mozilla SVGStringList.replaceItem documentation> 
replaceItem_ ::
             (MonadDOM m, ToJSString item) =>
               SVGStringList -> item -> Word -> m ()
replaceItem_ self item index
  = liftDOM
      (void (self ^. jsf "replaceItem" [toJSVal item, toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.removeItem Mozilla SVGStringList.removeItem documentation> 
removeItem ::
           (MonadDOM m, FromJSString result) =>
             SVGStringList -> Word -> m result
removeItem self index
  = liftDOM
      ((self ^. jsf "removeItem" [toJSVal index]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.removeItem Mozilla SVGStringList.removeItem documentation> 
removeItem_ :: (MonadDOM m) => SVGStringList -> Word -> m ()
removeItem_ self index
  = liftDOM (void (self ^. jsf "removeItem" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.appendItem Mozilla SVGStringList.appendItem documentation> 
appendItem ::
           (MonadDOM m, ToJSString item, FromJSString result) =>
             SVGStringList -> item -> m result
appendItem self item
  = liftDOM
      ((self ^. jsf "appendItem" [toJSVal item]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.appendItem Mozilla SVGStringList.appendItem documentation> 
appendItem_ ::
            (MonadDOM m, ToJSString item) => SVGStringList -> item -> m ()
appendItem_ self item
  = liftDOM (void (self ^. jsf "appendItem" [toJSVal item]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.numberOfItems Mozilla SVGStringList.numberOfItems documentation> 
getNumberOfItems :: (MonadDOM m) => SVGStringList -> m Word
getNumberOfItems self
  = liftDOM
      (round <$> ((self ^. js "numberOfItems") >>= valToNumber))
