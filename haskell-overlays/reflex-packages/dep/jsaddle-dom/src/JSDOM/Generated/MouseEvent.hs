{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MouseEvent
       (newMouseEvent, initMouseEvent, pattern WEBKIT_FORCE_AT_MOUSE_DOWN,
        pattern WEBKIT_FORCE_AT_FORCE_MOUSE_DOWN, getScreenX, getScreenY,
        getClientX, getClientY, getCtrlKey, getShiftKey, getAltKey,
        getMetaKey, getButton, getRelatedTarget, getRelatedTargetUnsafe,
        getRelatedTargetUnchecked, getMovementX, getMovementY,
        getWebkitForce, getOffsetX, getOffsetY, getX, getY, getFromElement,
        getFromElementUnsafe, getFromElementUnchecked, getToElement,
        getToElementUnsafe, getToElementUnchecked, getDataTransfer,
        getDataTransferUnsafe, getDataTransferUnchecked, MouseEvent(..),
        gTypeMouseEvent, IsMouseEvent, toMouseEvent)
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
import JSDOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent Mozilla MouseEvent documentation> 
newMouseEvent ::
              (MonadDOM m, ToJSString type', IsMouseEventInit eventInitDict) =>
                type' -> Maybe eventInitDict -> m MouseEvent
newMouseEvent type' eventInitDict
  = liftDOM
      (MouseEvent <$>
         new (jsg "MouseEvent") [toJSVal type', toJSVal eventInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.initMouseEvent Mozilla MouseEvent.initMouseEvent documentation> 
initMouseEvent ::
               (MonadDOM m, IsMouseEvent self, ToJSString type',
                ToJSVal relatedTarget) =>
                 self ->
                   Maybe type' ->
                     Bool ->
                       Bool ->
                         Maybe Window ->
                           Maybe Int ->
                             Maybe Int ->
                               Maybe Int ->
                                 Maybe Int ->
                                   Maybe Int ->
                                     Bool ->
                                       Bool ->
                                         Bool -> Bool -> Maybe Word -> Maybe relatedTarget -> m ()
initMouseEvent self type' canBubble cancelable view detail screenX
  screenY clientX clientY ctrlKey altKey shiftKey metaKey button
  relatedTarget
  = liftDOM
      (void
         ((toMouseEvent self) ^. jsf "initMouseEvent"
            [toJSVal type', toJSVal canBubble, toJSVal cancelable,
             toJSVal view, toJSVal detail, toJSVal screenX, toJSVal screenY,
             toJSVal clientX, toJSVal clientY, toJSVal ctrlKey, toJSVal altKey,
             toJSVal shiftKey, toJSVal metaKey, toJSVal button,
             toJSVal relatedTarget]))
pattern WEBKIT_FORCE_AT_MOUSE_DOWN = 1
pattern WEBKIT_FORCE_AT_FORCE_MOUSE_DOWN = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.screenX Mozilla MouseEvent.screenX documentation> 
getScreenX :: (MonadDOM m, IsMouseEvent self) => self -> m Int
getScreenX self
  = liftDOM
      (round <$> (((toMouseEvent self) ^. js "screenX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.screenY Mozilla MouseEvent.screenY documentation> 
getScreenY :: (MonadDOM m, IsMouseEvent self) => self -> m Int
getScreenY self
  = liftDOM
      (round <$> (((toMouseEvent self) ^. js "screenY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.clientX Mozilla MouseEvent.clientX documentation> 
getClientX :: (MonadDOM m, IsMouseEvent self) => self -> m Int
getClientX self
  = liftDOM
      (round <$> (((toMouseEvent self) ^. js "clientX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.clientY Mozilla MouseEvent.clientY documentation> 
getClientY :: (MonadDOM m, IsMouseEvent self) => self -> m Int
getClientY self
  = liftDOM
      (round <$> (((toMouseEvent self) ^. js "clientY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.ctrlKey Mozilla MouseEvent.ctrlKey documentation> 
getCtrlKey :: (MonadDOM m, IsMouseEvent self) => self -> m Bool
getCtrlKey self
  = liftDOM (((toMouseEvent self) ^. js "ctrlKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.shiftKey Mozilla MouseEvent.shiftKey documentation> 
getShiftKey :: (MonadDOM m, IsMouseEvent self) => self -> m Bool
getShiftKey self
  = liftDOM (((toMouseEvent self) ^. js "shiftKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.altKey Mozilla MouseEvent.altKey documentation> 
getAltKey :: (MonadDOM m, IsMouseEvent self) => self -> m Bool
getAltKey self
  = liftDOM (((toMouseEvent self) ^. js "altKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.metaKey Mozilla MouseEvent.metaKey documentation> 
getMetaKey :: (MonadDOM m, IsMouseEvent self) => self -> m Bool
getMetaKey self
  = liftDOM (((toMouseEvent self) ^. js "metaKey") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.button Mozilla MouseEvent.button documentation> 
getButton :: (MonadDOM m, IsMouseEvent self) => self -> m Word
getButton self
  = liftDOM
      (round <$> (((toMouseEvent self) ^. js "button") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.relatedTarget Mozilla MouseEvent.relatedTarget documentation> 
getRelatedTarget ::
                 (MonadDOM m, IsMouseEvent self) => self -> m (Maybe EventTarget)
getRelatedTarget self
  = liftDOM
      (((toMouseEvent self) ^. js "relatedTarget") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.relatedTarget Mozilla MouseEvent.relatedTarget documentation> 
getRelatedTargetUnsafe ::
                       (MonadDOM m, IsMouseEvent self, HasCallStack) =>
                         self -> m EventTarget
getRelatedTargetUnsafe self
  = liftDOM
      ((((toMouseEvent self) ^. js "relatedTarget") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.relatedTarget Mozilla MouseEvent.relatedTarget documentation> 
getRelatedTargetUnchecked ::
                          (MonadDOM m, IsMouseEvent self) => self -> m EventTarget
getRelatedTargetUnchecked self
  = liftDOM
      (((toMouseEvent self) ^. js "relatedTarget") >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.movementX Mozilla MouseEvent.movementX documentation> 
getMovementX :: (MonadDOM m, IsMouseEvent self) => self -> m Int
getMovementX self
  = liftDOM
      (round <$>
         (((toMouseEvent self) ^. js "movementX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.movementY Mozilla MouseEvent.movementY documentation> 
getMovementY :: (MonadDOM m, IsMouseEvent self) => self -> m Int
getMovementY self
  = liftDOM
      (round <$>
         (((toMouseEvent self) ^. js "movementY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.webkitForce Mozilla MouseEvent.webkitForce documentation> 
getWebkitForce ::
               (MonadDOM m, IsMouseEvent self) => self -> m Double
getWebkitForce self
  = liftDOM
      (((toMouseEvent self) ^. js "webkitForce") >>= valToNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.offsetX Mozilla MouseEvent.offsetX documentation> 
getOffsetX :: (MonadDOM m, IsMouseEvent self) => self -> m Int
getOffsetX self
  = liftDOM
      (round <$> (((toMouseEvent self) ^. js "offsetX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.offsetY Mozilla MouseEvent.offsetY documentation> 
getOffsetY :: (MonadDOM m, IsMouseEvent self) => self -> m Int
getOffsetY self
  = liftDOM
      (round <$> (((toMouseEvent self) ^. js "offsetY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.x Mozilla MouseEvent.x documentation> 
getX :: (MonadDOM m, IsMouseEvent self) => self -> m Int
getX self
  = liftDOM
      (round <$> (((toMouseEvent self) ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.y Mozilla MouseEvent.y documentation> 
getY :: (MonadDOM m, IsMouseEvent self) => self -> m Int
getY self
  = liftDOM
      (round <$> (((toMouseEvent self) ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.fromElement Mozilla MouseEvent.fromElement documentation> 
getFromElement ::
               (MonadDOM m, IsMouseEvent self) => self -> m (Maybe Node)
getFromElement self
  = liftDOM (((toMouseEvent self) ^. js "fromElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.fromElement Mozilla MouseEvent.fromElement documentation> 
getFromElementUnsafe ::
                     (MonadDOM m, IsMouseEvent self, HasCallStack) => self -> m Node
getFromElementUnsafe self
  = liftDOM
      ((((toMouseEvent self) ^. js "fromElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.fromElement Mozilla MouseEvent.fromElement documentation> 
getFromElementUnchecked ::
                        (MonadDOM m, IsMouseEvent self) => self -> m Node
getFromElementUnchecked self
  = liftDOM
      (((toMouseEvent self) ^. js "fromElement") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.toElement Mozilla MouseEvent.toElement documentation> 
getToElement ::
             (MonadDOM m, IsMouseEvent self) => self -> m (Maybe Node)
getToElement self
  = liftDOM (((toMouseEvent self) ^. js "toElement") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.toElement Mozilla MouseEvent.toElement documentation> 
getToElementUnsafe ::
                   (MonadDOM m, IsMouseEvent self, HasCallStack) => self -> m Node
getToElementUnsafe self
  = liftDOM
      ((((toMouseEvent self) ^. js "toElement") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.toElement Mozilla MouseEvent.toElement documentation> 
getToElementUnchecked ::
                      (MonadDOM m, IsMouseEvent self) => self -> m Node
getToElementUnchecked self
  = liftDOM
      (((toMouseEvent self) ^. js "toElement") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.dataTransfer Mozilla MouseEvent.dataTransfer documentation> 
getDataTransfer ::
                (MonadDOM m, IsMouseEvent self) => self -> m (Maybe DataTransfer)
getDataTransfer self
  = liftDOM
      (((toMouseEvent self) ^. js "dataTransfer") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.dataTransfer Mozilla MouseEvent.dataTransfer documentation> 
getDataTransferUnsafe ::
                      (MonadDOM m, IsMouseEvent self, HasCallStack) =>
                        self -> m DataTransfer
getDataTransferUnsafe self
  = liftDOM
      ((((toMouseEvent self) ^. js "dataTransfer") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.dataTransfer Mozilla MouseEvent.dataTransfer documentation> 
getDataTransferUnchecked ::
                         (MonadDOM m, IsMouseEvent self) => self -> m DataTransfer
getDataTransferUnchecked self
  = liftDOM
      (((toMouseEvent self) ^. js "dataTransfer") >>= fromJSValUnchecked)
