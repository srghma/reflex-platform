{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.MediaQueryList
       (addListener, removeListener, getMedia, getMatches,
        MediaQueryList(..), gTypeMediaQueryList)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.addListener Mozilla MediaQueryList.addListener documentation> 
addListener ::
            (MonadDOM m) =>
              MediaQueryList -> Maybe MediaQueryListListener -> m ()
addListener self listener
  = liftDOM (void (self ^. jsf "addListener" [toJSVal listener]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.removeListener Mozilla MediaQueryList.removeListener documentation> 
removeListener ::
               (MonadDOM m) =>
                 MediaQueryList -> Maybe MediaQueryListListener -> m ()
removeListener self listener
  = liftDOM (void (self ^. jsf "removeListener" [toJSVal listener]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.media Mozilla MediaQueryList.media documentation> 
getMedia ::
         (MonadDOM m, FromJSString result) => MediaQueryList -> m result
getMedia self
  = liftDOM ((self ^. js "media") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.matches Mozilla MediaQueryList.matches documentation> 
getMatches :: (MonadDOM m) => MediaQueryList -> m Bool
getMatches self = liftDOM ((self ^. js "matches") >>= valToBool)
