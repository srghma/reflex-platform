{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.IDBTransaction
       (objectStore, objectStore_, abort, getObjectStoreNames, getMode,
        getDb, getError, abortEvent, complete, error, IDBTransaction(..),
        gTypeIDBTransaction)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
objectStore ::
            (MonadDOM m, ToJSString name) =>
              IDBTransaction -> name -> m IDBObjectStore
objectStore self name
  = liftDOM
      ((self ^. jsf "objectStore" [toJSVal name]) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStore Mozilla IDBTransaction.objectStore documentation> 
objectStore_ ::
             (MonadDOM m, ToJSString name) => IDBTransaction -> name -> m ()
objectStore_ self name
  = liftDOM (void (self ^. jsf "objectStore" [toJSVal name]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.abort Mozilla IDBTransaction.abort documentation> 
abort :: (MonadDOM m) => IDBTransaction -> m ()
abort self = liftDOM (void (self ^. jsf "abort" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.objectStoreNames Mozilla IDBTransaction.objectStoreNames documentation> 
getObjectStoreNames ::
                    (MonadDOM m) => IDBTransaction -> m DOMStringList
getObjectStoreNames self
  = liftDOM ((self ^. js "objectStoreNames") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.mode Mozilla IDBTransaction.mode documentation> 
getMode :: (MonadDOM m) => IDBTransaction -> m IDBTransactionMode
getMode self = liftDOM ((self ^. js "mode") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.db Mozilla IDBTransaction.db documentation> 
getDb :: (MonadDOM m) => IDBTransaction -> m IDBDatabase
getDb self = liftDOM ((self ^. js "db") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.error Mozilla IDBTransaction.error documentation> 
getError :: (MonadDOM m) => IDBTransaction -> m DOMError
getError self
  = liftDOM ((self ^. js "error") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onabort Mozilla IDBTransaction.onabort documentation> 
abortEvent :: EventName IDBTransaction Event
abortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.oncomplete Mozilla IDBTransaction.oncomplete documentation> 
complete :: EventName IDBTransaction Event
complete = unsafeEventName (toJSString "complete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBTransaction.onerror Mozilla IDBTransaction.onerror documentation> 
error :: EventName IDBTransaction Event
error = unsafeEventName (toJSString "error")
