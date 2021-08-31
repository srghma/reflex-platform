{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.Slotable
       (getAssignedSlot, getAssignedSlotUnsafe, getAssignedSlotUnchecked,
        Slotable(..), gTypeSlotable, IsSlotable, toSlotable)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Slotable.assignedSlot Mozilla Slotable.assignedSlot documentation> 
getAssignedSlot ::
                (MonadDOM m, IsSlotable self) => self -> m (Maybe HTMLSlotElement)
getAssignedSlot self
  = liftDOM (((toSlotable self) ^. js "assignedSlot") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Slotable.assignedSlot Mozilla Slotable.assignedSlot documentation> 
getAssignedSlotUnsafe ::
                      (MonadDOM m, IsSlotable self, HasCallStack) =>
                        self -> m HTMLSlotElement
getAssignedSlotUnsafe self
  = liftDOM
      ((((toSlotable self) ^. js "assignedSlot") >>= fromJSVal) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Slotable.assignedSlot Mozilla Slotable.assignedSlot documentation> 
getAssignedSlotUnchecked ::
                         (MonadDOM m, IsSlotable self) => self -> m HTMLSlotElement
getAssignedSlotUnchecked self
  = liftDOM
      (((toSlotable self) ^. js "assignedSlot") >>= fromJSValUnchecked)
