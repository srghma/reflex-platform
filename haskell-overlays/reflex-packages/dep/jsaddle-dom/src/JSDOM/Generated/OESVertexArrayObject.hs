{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.OESVertexArrayObject
       (createVertexArrayOES, createVertexArrayOES_, deleteVertexArrayOES,
        isVertexArrayOES, isVertexArrayOES_, bindVertexArrayOES,
        pattern VERTEX_ARRAY_BINDING_OES, OESVertexArrayObject(..),
        gTypeOESVertexArrayObject)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOES ::
                     (MonadDOM m) => OESVertexArrayObject -> m WebGLVertexArrayObjectOES
createVertexArrayOES self
  = liftDOM
      ((self ^. jsf "createVertexArrayOES" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOES_ ::
                      (MonadDOM m) => OESVertexArrayObject -> m ()
createVertexArrayOES_ self
  = liftDOM (void (self ^. jsf "createVertexArrayOES" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.deleteVertexArrayOES Mozilla OESVertexArrayObject.deleteVertexArrayOES documentation> 
deleteVertexArrayOES ::
                     (MonadDOM m) =>
                       OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
deleteVertexArrayOES self arrayObject
  = liftDOM
      (void (self ^. jsf "deleteVertexArrayOES" [toJSVal arrayObject]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.isVertexArrayOES Mozilla OESVertexArrayObject.isVertexArrayOES documentation> 
isVertexArrayOES ::
                 (MonadDOM m) =>
                   OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m Bool
isVertexArrayOES self arrayObject
  = liftDOM
      ((self ^. jsf "isVertexArrayOES" [toJSVal arrayObject]) >>=
         valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.isVertexArrayOES Mozilla OESVertexArrayObject.isVertexArrayOES documentation> 
isVertexArrayOES_ ::
                  (MonadDOM m) =>
                    OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
isVertexArrayOES_ self arrayObject
  = liftDOM
      (void (self ^. jsf "isVertexArrayOES" [toJSVal arrayObject]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.bindVertexArrayOES Mozilla OESVertexArrayObject.bindVertexArrayOES documentation> 
bindVertexArrayOES ::
                   (MonadDOM m) =>
                     OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
bindVertexArrayOES self arrayObject
  = liftDOM
      (void (self ^. jsf "bindVertexArrayOES" [toJSVal arrayObject]))
pattern VERTEX_ARRAY_BINDING_OES = 34229
