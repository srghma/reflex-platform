{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.SVGPathSegCurvetoCubicSmoothAbs
       (setX, getX, setY, getY, setX2, getX2, setY2, getY2,
        SVGPathSegCurvetoCubicSmoothAbs(..),
        gTypeSVGPathSegCurvetoCubicSmoothAbs)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x Mozilla SVGPathSegCurvetoCubicSmoothAbs.x documentation> 
setX ::
     (MonadDOM m) => SVGPathSegCurvetoCubicSmoothAbs -> Float -> m ()
setX self val = liftDOM (self ^. jss "x" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x Mozilla SVGPathSegCurvetoCubicSmoothAbs.x documentation> 
getX :: (MonadDOM m) => SVGPathSegCurvetoCubicSmoothAbs -> m Float
getX self
  = liftDOM (realToFrac <$> ((self ^. js "x") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y Mozilla SVGPathSegCurvetoCubicSmoothAbs.y documentation> 
setY ::
     (MonadDOM m) => SVGPathSegCurvetoCubicSmoothAbs -> Float -> m ()
setY self val = liftDOM (self ^. jss "y" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y Mozilla SVGPathSegCurvetoCubicSmoothAbs.y documentation> 
getY :: (MonadDOM m) => SVGPathSegCurvetoCubicSmoothAbs -> m Float
getY self
  = liftDOM (realToFrac <$> ((self ^. js "y") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.x2 documentation> 
setX2 ::
      (MonadDOM m) => SVGPathSegCurvetoCubicSmoothAbs -> Float -> m ()
setX2 self val = liftDOM (self ^. jss "x2" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.x2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.x2 documentation> 
getX2 :: (MonadDOM m) => SVGPathSegCurvetoCubicSmoothAbs -> m Float
getX2 self
  = liftDOM (realToFrac <$> ((self ^. js "x2") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.y2 documentation> 
setY2 ::
      (MonadDOM m) => SVGPathSegCurvetoCubicSmoothAbs -> Float -> m ()
setY2 self val = liftDOM (self ^. jss "y2" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegCurvetoCubicSmoothAbs.y2 Mozilla SVGPathSegCurvetoCubicSmoothAbs.y2 documentation> 
getY2 :: (MonadDOM m) => SVGPathSegCurvetoCubicSmoothAbs -> m Float
getY2 self
  = liftDOM (realToFrac <$> ((self ^. js "y2") >>= valToNumber))
