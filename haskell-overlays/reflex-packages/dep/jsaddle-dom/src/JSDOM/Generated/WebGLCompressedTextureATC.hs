{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.WebGLCompressedTextureATC
       (pattern COMPRESSED_RGB_ATC_WEBGL,
        pattern COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL,
        pattern COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL,
        WebGLCompressedTextureATC(..), gTypeWebGLCompressedTextureATC)
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
pattern COMPRESSED_RGB_ATC_WEBGL = 35986
pattern COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL = 35987
pattern COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL = 34798
