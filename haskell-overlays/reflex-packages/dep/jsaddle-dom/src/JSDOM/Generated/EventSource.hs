{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.EventSource
       (newEventSource, close, pattern CONNECTING, pattern OPEN,
        pattern CLOSED, getUrl, getWithCredentials, getReadyState, open,
        message, error, EventSource(..), gTypeEventSource)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource Mozilla EventSource documentation> 
newEventSource ::
               (MonadDOM m, ToJSString url) =>
                 url -> Maybe EventSourceInit -> m EventSource
newEventSource url eventSourceInitDict
  = liftDOM
      (EventSource <$>
         new (jsg "EventSource") [toJSVal url, toJSVal eventSourceInitDict])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.close Mozilla EventSource.close documentation> 
close :: (MonadDOM m) => EventSource -> m ()
close self = liftDOM (void (self ^. jsf "close" ()))
pattern CONNECTING = 0
pattern OPEN = 1
pattern CLOSED = 2

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.url Mozilla EventSource.url documentation> 
getUrl ::
       (MonadDOM m, FromJSString result) => EventSource -> m result
getUrl self = liftDOM ((self ^. js "url") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.withCredentials Mozilla EventSource.withCredentials documentation> 
getWithCredentials :: (MonadDOM m) => EventSource -> m Bool
getWithCredentials self
  = liftDOM ((self ^. js "withCredentials") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.readyState Mozilla EventSource.readyState documentation> 
getReadyState :: (MonadDOM m) => EventSource -> m Word
getReadyState self
  = liftDOM (round <$> ((self ^. js "readyState") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onopen Mozilla EventSource.onopen documentation> 
open :: EventName EventSource Event
open = unsafeEventNameAsync (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onmessage Mozilla EventSource.onmessage documentation> 
message :: EventName EventSource MessageEvent
message = unsafeEventNameAsync (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onerror Mozilla EventSource.onerror documentation> 
error :: EventName EventSource UIEvent
error = unsafeEventNameAsync (toJSString "error")
