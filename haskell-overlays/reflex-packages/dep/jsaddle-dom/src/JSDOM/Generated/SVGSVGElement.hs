{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGSVGElement
       (suspendRedraw, suspendRedraw_, unsuspendRedraw,
        unsuspendRedrawAll, forceRedraw, pauseAnimations,
        unpauseAnimations, animationsPaused, animationsPaused_,
        getCurrentTime, getCurrentTime_, setCurrentTime,
        getIntersectionList, getIntersectionList_, getEnclosureList,
        getEnclosureList_, checkIntersection, checkIntersection_,
        checkEnclosure, checkEnclosure_, deselectAll, createSVGNumber,
        createSVGNumber_, createSVGLength, createSVGLength_,
        createSVGAngle, createSVGAngle_, createSVGPoint, createSVGPoint_,
        createSVGMatrix, createSVGMatrix_, createSVGRect, createSVGRect_,
        createSVGTransform, createSVGTransform_,
        createSVGTransformFromMatrix, createSVGTransformFromMatrix_,
        getElementById, getElementById_, getX, getY, getWidth, getHeight,
        setContentScriptType, getContentScriptType, setContentStyleType,
        getContentStyleType, getViewport, getPixelUnitToMillimeterX,
        getPixelUnitToMillimeterY, getScreenPixelToMillimeterX,
        getScreenPixelToMillimeterY, getUseCurrentView, getCurrentView,
        setCurrentScale, getCurrentScale, getCurrentTranslate,
        SVGSVGElement(..), gTypeSVGSVGElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.suspendRedraw Mozilla SVGSVGElement.suspendRedraw documentation> 
suspendRedraw ::
              (MonadDOM m) => SVGSVGElement -> Maybe Word -> m Word
suspendRedraw self maxWaitMilliseconds
  = liftDOM
      (round <$>
         ((self ^. jsf "suspendRedraw" [toJSVal maxWaitMilliseconds]) >>=
            valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.suspendRedraw Mozilla SVGSVGElement.suspendRedraw documentation> 
suspendRedraw_ ::
               (MonadDOM m) => SVGSVGElement -> Maybe Word -> m ()
suspendRedraw_ self maxWaitMilliseconds
  = liftDOM
      (void (self ^. jsf "suspendRedraw" [toJSVal maxWaitMilliseconds]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unsuspendRedraw Mozilla SVGSVGElement.unsuspendRedraw documentation> 
unsuspendRedraw ::
                (MonadDOM m) => SVGSVGElement -> Maybe Word -> m ()
unsuspendRedraw self suspendHandleId
  = liftDOM
      (void (self ^. jsf "unsuspendRedraw" [toJSVal suspendHandleId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unsuspendRedrawAll Mozilla SVGSVGElement.unsuspendRedrawAll documentation> 
unsuspendRedrawAll :: (MonadDOM m) => SVGSVGElement -> m ()
unsuspendRedrawAll self
  = liftDOM (void (self ^. jsf "unsuspendRedrawAll" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.forceRedraw Mozilla SVGSVGElement.forceRedraw documentation> 
forceRedraw :: (MonadDOM m) => SVGSVGElement -> m ()
forceRedraw self = liftDOM (void (self ^. jsf "forceRedraw" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pauseAnimations Mozilla SVGSVGElement.pauseAnimations documentation> 
pauseAnimations :: (MonadDOM m) => SVGSVGElement -> m ()
pauseAnimations self
  = liftDOM (void (self ^. jsf "pauseAnimations" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unpauseAnimations Mozilla SVGSVGElement.unpauseAnimations documentation> 
unpauseAnimations :: (MonadDOM m) => SVGSVGElement -> m ()
unpauseAnimations self
  = liftDOM (void (self ^. jsf "unpauseAnimations" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.animationsPaused Mozilla SVGSVGElement.animationsPaused documentation> 
animationsPaused :: (MonadDOM m) => SVGSVGElement -> m Bool
animationsPaused self
  = liftDOM ((self ^. jsf "animationsPaused" ()) >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.animationsPaused Mozilla SVGSVGElement.animationsPaused documentation> 
animationsPaused_ :: (MonadDOM m) => SVGSVGElement -> m ()
animationsPaused_ self
  = liftDOM (void (self ^. jsf "animationsPaused" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getCurrentTime Mozilla SVGSVGElement.getCurrentTime documentation> 
getCurrentTime :: (MonadDOM m) => SVGSVGElement -> m Float
getCurrentTime self
  = liftDOM
      (realToFrac <$>
         ((self ^. jsf "getCurrentTime" ()) >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getCurrentTime Mozilla SVGSVGElement.getCurrentTime documentation> 
getCurrentTime_ :: (MonadDOM m) => SVGSVGElement -> m ()
getCurrentTime_ self
  = liftDOM (void (self ^. jsf "getCurrentTime" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.setCurrentTime Mozilla SVGSVGElement.setCurrentTime documentation> 
setCurrentTime ::
               (MonadDOM m) => SVGSVGElement -> Maybe Float -> m ()
setCurrentTime self seconds
  = liftDOM (void (self ^. jsf "setCurrentTime" [toJSVal seconds]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getIntersectionList Mozilla SVGSVGElement.getIntersectionList documentation> 
getIntersectionList ::
                    (MonadDOM m, IsSVGElement referenceElement) =>
                      SVGSVGElement -> SVGRect -> Maybe referenceElement -> m NodeList
getIntersectionList self rect referenceElement
  = liftDOM
      ((self ^. jsf "getIntersectionList"
          [toJSVal rect, toJSVal referenceElement])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getIntersectionList Mozilla SVGSVGElement.getIntersectionList documentation> 
getIntersectionList_ ::
                     (MonadDOM m, IsSVGElement referenceElement) =>
                       SVGSVGElement -> SVGRect -> Maybe referenceElement -> m ()
getIntersectionList_ self rect referenceElement
  = liftDOM
      (void
         (self ^. jsf "getIntersectionList"
            [toJSVal rect, toJSVal referenceElement]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getEnclosureList Mozilla SVGSVGElement.getEnclosureList documentation> 
getEnclosureList ::
                 (MonadDOM m, IsSVGElement referenceElement) =>
                   SVGSVGElement -> SVGRect -> Maybe referenceElement -> m NodeList
getEnclosureList self rect referenceElement
  = liftDOM
      ((self ^. jsf "getEnclosureList"
          [toJSVal rect, toJSVal referenceElement])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getEnclosureList Mozilla SVGSVGElement.getEnclosureList documentation> 
getEnclosureList_ ::
                  (MonadDOM m, IsSVGElement referenceElement) =>
                    SVGSVGElement -> SVGRect -> Maybe referenceElement -> m ()
getEnclosureList_ self rect referenceElement
  = liftDOM
      (void
         (self ^. jsf "getEnclosureList"
            [toJSVal rect, toJSVal referenceElement]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkIntersection Mozilla SVGSVGElement.checkIntersection documentation> 
checkIntersection ::
                  (MonadDOM m, IsSVGElement element) =>
                    SVGSVGElement -> Maybe element -> SVGRect -> m Bool
checkIntersection self element rect
  = liftDOM
      ((self ^. jsf "checkIntersection" [toJSVal element, toJSVal rect])
         >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkIntersection Mozilla SVGSVGElement.checkIntersection documentation> 
checkIntersection_ ::
                   (MonadDOM m, IsSVGElement element) =>
                     SVGSVGElement -> Maybe element -> SVGRect -> m ()
checkIntersection_ self element rect
  = liftDOM
      (void
         (self ^. jsf "checkIntersection" [toJSVal element, toJSVal rect]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkEnclosure Mozilla SVGSVGElement.checkEnclosure documentation> 
checkEnclosure ::
               (MonadDOM m, IsSVGElement element) =>
                 SVGSVGElement -> Maybe element -> SVGRect -> m Bool
checkEnclosure self element rect
  = liftDOM
      ((self ^. jsf "checkEnclosure" [toJSVal element, toJSVal rect]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkEnclosure Mozilla SVGSVGElement.checkEnclosure documentation> 
checkEnclosure_ ::
                (MonadDOM m, IsSVGElement element) =>
                  SVGSVGElement -> Maybe element -> SVGRect -> m ()
checkEnclosure_ self element rect
  = liftDOM
      (void
         (self ^. jsf "checkEnclosure" [toJSVal element, toJSVal rect]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.deselectAll Mozilla SVGSVGElement.deselectAll documentation> 
deselectAll :: (MonadDOM m) => SVGSVGElement -> m ()
deselectAll self = liftDOM (void (self ^. jsf "deselectAll" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGNumber Mozilla SVGSVGElement.createSVGNumber documentation> 
createSVGNumber :: (MonadDOM m) => SVGSVGElement -> m SVGNumber
createSVGNumber self
  = liftDOM
      ((self ^. jsf "createSVGNumber" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGNumber Mozilla SVGSVGElement.createSVGNumber documentation> 
createSVGNumber_ :: (MonadDOM m) => SVGSVGElement -> m ()
createSVGNumber_ self
  = liftDOM (void (self ^. jsf "createSVGNumber" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGLength Mozilla SVGSVGElement.createSVGLength documentation> 
createSVGLength :: (MonadDOM m) => SVGSVGElement -> m SVGLength
createSVGLength self
  = liftDOM
      ((self ^. jsf "createSVGLength" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGLength Mozilla SVGSVGElement.createSVGLength documentation> 
createSVGLength_ :: (MonadDOM m) => SVGSVGElement -> m ()
createSVGLength_ self
  = liftDOM (void (self ^. jsf "createSVGLength" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGAngle Mozilla SVGSVGElement.createSVGAngle documentation> 
createSVGAngle :: (MonadDOM m) => SVGSVGElement -> m SVGAngle
createSVGAngle self
  = liftDOM
      ((self ^. jsf "createSVGAngle" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGAngle Mozilla SVGSVGElement.createSVGAngle documentation> 
createSVGAngle_ :: (MonadDOM m) => SVGSVGElement -> m ()
createSVGAngle_ self
  = liftDOM (void (self ^. jsf "createSVGAngle" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGPoint Mozilla SVGSVGElement.createSVGPoint documentation> 
createSVGPoint :: (MonadDOM m) => SVGSVGElement -> m SVGPoint
createSVGPoint self
  = liftDOM
      ((self ^. jsf "createSVGPoint" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGPoint Mozilla SVGSVGElement.createSVGPoint documentation> 
createSVGPoint_ :: (MonadDOM m) => SVGSVGElement -> m ()
createSVGPoint_ self
  = liftDOM (void (self ^. jsf "createSVGPoint" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGMatrix Mozilla SVGSVGElement.createSVGMatrix documentation> 
createSVGMatrix :: (MonadDOM m) => SVGSVGElement -> m SVGMatrix
createSVGMatrix self
  = liftDOM
      ((self ^. jsf "createSVGMatrix" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGMatrix Mozilla SVGSVGElement.createSVGMatrix documentation> 
createSVGMatrix_ :: (MonadDOM m) => SVGSVGElement -> m ()
createSVGMatrix_ self
  = liftDOM (void (self ^. jsf "createSVGMatrix" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGRect Mozilla SVGSVGElement.createSVGRect documentation> 
createSVGRect :: (MonadDOM m) => SVGSVGElement -> m SVGRect
createSVGRect self
  = liftDOM ((self ^. jsf "createSVGRect" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGRect Mozilla SVGSVGElement.createSVGRect documentation> 
createSVGRect_ :: (MonadDOM m) => SVGSVGElement -> m ()
createSVGRect_ self
  = liftDOM (void (self ^. jsf "createSVGRect" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransform Mozilla SVGSVGElement.createSVGTransform documentation> 
createSVGTransform ::
                   (MonadDOM m) => SVGSVGElement -> m SVGTransform
createSVGTransform self
  = liftDOM
      ((self ^. jsf "createSVGTransform" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransform Mozilla SVGSVGElement.createSVGTransform documentation> 
createSVGTransform_ :: (MonadDOM m) => SVGSVGElement -> m ()
createSVGTransform_ self
  = liftDOM (void (self ^. jsf "createSVGTransform" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransformFromMatrix Mozilla SVGSVGElement.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadDOM m) => SVGSVGElement -> SVGMatrix -> m SVGTransform
createSVGTransformFromMatrix self matrix
  = liftDOM
      ((self ^. jsf "createSVGTransformFromMatrix" [toJSVal matrix]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransformFromMatrix Mozilla SVGSVGElement.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix_ ::
                              (MonadDOM m) => SVGSVGElement -> SVGMatrix -> m ()
createSVGTransformFromMatrix_ self matrix
  = liftDOM
      (void
         (self ^. jsf "createSVGTransformFromMatrix" [toJSVal matrix]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getElementById Mozilla SVGSVGElement.getElementById documentation> 
getElementById ::
               (MonadDOM m, ToJSString elementId) =>
                 SVGSVGElement -> elementId -> m Element
getElementById self elementId
  = liftDOM
      ((self ^. jsf "getElementById" [toJSVal elementId]) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getElementById Mozilla SVGSVGElement.getElementById documentation> 
getElementById_ ::
                (MonadDOM m, ToJSString elementId) =>
                  SVGSVGElement -> elementId -> m ()
getElementById_ self elementId
  = liftDOM (void (self ^. jsf "getElementById" [toJSVal elementId]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.x Mozilla SVGSVGElement.x documentation> 
getX :: (MonadDOM m) => SVGSVGElement -> m SVGAnimatedLength
getX self = liftDOM ((self ^. js "x") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.y Mozilla SVGSVGElement.y documentation> 
getY :: (MonadDOM m) => SVGSVGElement -> m SVGAnimatedLength
getY self = liftDOM ((self ^. js "y") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.width Mozilla SVGSVGElement.width documentation> 
getWidth :: (MonadDOM m) => SVGSVGElement -> m SVGAnimatedLength
getWidth self
  = liftDOM ((self ^. js "width") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.height Mozilla SVGSVGElement.height documentation> 
getHeight :: (MonadDOM m) => SVGSVGElement -> m SVGAnimatedLength
getHeight self
  = liftDOM ((self ^. js "height") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentScriptType Mozilla SVGSVGElement.contentScriptType documentation> 
setContentScriptType ::
                     (MonadDOM m, ToJSString val) => SVGSVGElement -> val -> m ()
setContentScriptType self val
  = liftDOM (self ^. jss "contentScriptType" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentScriptType Mozilla SVGSVGElement.contentScriptType documentation> 
getContentScriptType ::
                     (MonadDOM m, FromJSString result) => SVGSVGElement -> m result
getContentScriptType self
  = liftDOM ((self ^. js "contentScriptType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentStyleType Mozilla SVGSVGElement.contentStyleType documentation> 
setContentStyleType ::
                    (MonadDOM m, ToJSString val) => SVGSVGElement -> val -> m ()
setContentStyleType self val
  = liftDOM (self ^. jss "contentStyleType" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentStyleType Mozilla SVGSVGElement.contentStyleType documentation> 
getContentStyleType ::
                    (MonadDOM m, FromJSString result) => SVGSVGElement -> m result
getContentStyleType self
  = liftDOM ((self ^. js "contentStyleType") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.viewport Mozilla SVGSVGElement.viewport documentation> 
getViewport :: (MonadDOM m) => SVGSVGElement -> m SVGRect
getViewport self
  = liftDOM ((self ^. js "viewport") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pixelUnitToMillimeterX Mozilla SVGSVGElement.pixelUnitToMillimeterX documentation> 
getPixelUnitToMillimeterX ::
                          (MonadDOM m) => SVGSVGElement -> m Float
getPixelUnitToMillimeterX self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "pixelUnitToMillimeterX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pixelUnitToMillimeterY Mozilla SVGSVGElement.pixelUnitToMillimeterY documentation> 
getPixelUnitToMillimeterY ::
                          (MonadDOM m) => SVGSVGElement -> m Float
getPixelUnitToMillimeterY self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "pixelUnitToMillimeterY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.screenPixelToMillimeterX Mozilla SVGSVGElement.screenPixelToMillimeterX documentation> 
getScreenPixelToMillimeterX ::
                            (MonadDOM m) => SVGSVGElement -> m Float
getScreenPixelToMillimeterX self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "screenPixelToMillimeterX") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.screenPixelToMillimeterY Mozilla SVGSVGElement.screenPixelToMillimeterY documentation> 
getScreenPixelToMillimeterY ::
                            (MonadDOM m) => SVGSVGElement -> m Float
getScreenPixelToMillimeterY self
  = liftDOM
      (realToFrac <$>
         ((self ^. js "screenPixelToMillimeterY") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.useCurrentView Mozilla SVGSVGElement.useCurrentView documentation> 
getUseCurrentView :: (MonadDOM m) => SVGSVGElement -> m Bool
getUseCurrentView self
  = liftDOM ((self ^. js "useCurrentView") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentView Mozilla SVGSVGElement.currentView documentation> 
getCurrentView :: (MonadDOM m) => SVGSVGElement -> m SVGViewSpec
getCurrentView self
  = liftDOM ((self ^. js "currentView") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentScale Mozilla SVGSVGElement.currentScale documentation> 
setCurrentScale :: (MonadDOM m) => SVGSVGElement -> Float -> m ()
setCurrentScale self val
  = liftDOM (self ^. jss "currentScale" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentScale Mozilla SVGSVGElement.currentScale documentation> 
getCurrentScale :: (MonadDOM m) => SVGSVGElement -> m Float
getCurrentScale self
  = liftDOM
      (realToFrac <$> ((self ^. js "currentScale") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentTranslate Mozilla SVGSVGElement.currentTranslate documentation> 
getCurrentTranslate :: (MonadDOM m) => SVGSVGElement -> m SVGPoint
getCurrentTranslate self
  = liftDOM ((self ^. js "currentTranslate") >>= fromJSValUnchecked)
