{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGAnimationElement
       (getStartTime, getStartTime_, getCurrentTime, getCurrentTime_,
        getSimpleDuration, getSimpleDuration_, beginElement,
        beginElementAt, endElement, endElementAt, getTargetElement,
        SVGAnimationElement(..), gTypeSVGAnimationElement,
        IsSVGAnimationElement, toSVGAnimationElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getStartTime Mozilla SVGAnimationElement.getStartTime documentation> 
getStartTime ::
             (MonadDOM m, IsSVGAnimationElement self) => self -> m Float
getStartTime self
  = liftDOM
      (realToFrac <$>
         (((toSVGAnimationElement self) ^. jsf "getStartTime" ()) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getStartTime Mozilla SVGAnimationElement.getStartTime documentation> 
getStartTime_ ::
              (MonadDOM m, IsSVGAnimationElement self) => self -> m ()
getStartTime_ self
  = liftDOM
      (void ((toSVGAnimationElement self) ^. jsf "getStartTime" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getCurrentTime Mozilla SVGAnimationElement.getCurrentTime documentation> 
getCurrentTime ::
               (MonadDOM m, IsSVGAnimationElement self) => self -> m Float
getCurrentTime self
  = liftDOM
      (realToFrac <$>
         (((toSVGAnimationElement self) ^. jsf "getCurrentTime" ()) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getCurrentTime Mozilla SVGAnimationElement.getCurrentTime documentation> 
getCurrentTime_ ::
                (MonadDOM m, IsSVGAnimationElement self) => self -> m ()
getCurrentTime_ self
  = liftDOM
      (void ((toSVGAnimationElement self) ^. jsf "getCurrentTime" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getSimpleDuration Mozilla SVGAnimationElement.getSimpleDuration documentation> 
getSimpleDuration ::
                  (MonadDOM m, IsSVGAnimationElement self) => self -> m Float
getSimpleDuration self
  = liftDOM
      (realToFrac <$>
         (((toSVGAnimationElement self) ^. jsf "getSimpleDuration" ()) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getSimpleDuration Mozilla SVGAnimationElement.getSimpleDuration documentation> 
getSimpleDuration_ ::
                   (MonadDOM m, IsSVGAnimationElement self) => self -> m ()
getSimpleDuration_ self
  = liftDOM
      (void ((toSVGAnimationElement self) ^. jsf "getSimpleDuration" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.beginElement Mozilla SVGAnimationElement.beginElement documentation> 
beginElement ::
             (MonadDOM m, IsSVGAnimationElement self) => self -> m ()
beginElement self
  = liftDOM
      (void ((toSVGAnimationElement self) ^. jsf "beginElement" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.beginElementAt Mozilla SVGAnimationElement.beginElementAt documentation> 
beginElementAt ::
               (MonadDOM m, IsSVGAnimationElement self) =>
                 self -> Maybe Float -> m ()
beginElementAt self offset
  = liftDOM
      (void
         ((toSVGAnimationElement self) ^. jsf "beginElementAt"
            [toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.endElement Mozilla SVGAnimationElement.endElement documentation> 
endElement ::
           (MonadDOM m, IsSVGAnimationElement self) => self -> m ()
endElement self
  = liftDOM
      (void ((toSVGAnimationElement self) ^. jsf "endElement" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.endElementAt Mozilla SVGAnimationElement.endElementAt documentation> 
endElementAt ::
             (MonadDOM m, IsSVGAnimationElement self) =>
               self -> Maybe Float -> m ()
endElementAt self offset
  = liftDOM
      (void
         ((toSVGAnimationElement self) ^. jsf "endElementAt"
            [toJSVal offset]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.targetElement Mozilla SVGAnimationElement.targetElement documentation> 
getTargetElement ::
                 (MonadDOM m, IsSVGAnimationElement self) => self -> m SVGElement
getTargetElement self
  = liftDOM
      (((toSVGAnimationElement self) ^. js "targetElement") >>=
         fromJSValUnchecked)
