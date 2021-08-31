{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGLShaderPrecisionFormat
       (getRangeMin, getRangeMax, getPrecision,
        WebGLShaderPrecisionFormat(..), gTypeWebGLShaderPrecisionFormat)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.rangeMin Mozilla WebGLShaderPrecisionFormat.rangeMin documentation> 
getRangeMin :: (MonadDOM m) => WebGLShaderPrecisionFormat -> m Int
getRangeMin self
  = liftDOM (round <$> ((self ^. js "rangeMin") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.rangeMax Mozilla WebGLShaderPrecisionFormat.rangeMax documentation> 
getRangeMax :: (MonadDOM m) => WebGLShaderPrecisionFormat -> m Int
getRangeMax self
  = liftDOM (round <$> ((self ^. js "rangeMax") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.precision Mozilla WebGLShaderPrecisionFormat.precision documentation> 
getPrecision :: (MonadDOM m) => WebGLShaderPrecisionFormat -> m Int
getPrecision self
  = liftDOM (round <$> ((self ^. js "precision") >>= valToNumber))
