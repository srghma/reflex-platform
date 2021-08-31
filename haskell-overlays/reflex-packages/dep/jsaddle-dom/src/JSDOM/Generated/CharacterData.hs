{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.CharacterData
       (substringData, substringData_, appendData, insertData, deleteData,
        replaceData, setData, getData, getLength, CharacterData(..),
        gTypeCharacterData, IsCharacterData, toCharacterData)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.substringData Mozilla CharacterData.substringData documentation> 
substringData ::
              (MonadDOM m, IsCharacterData self, FromJSString result) =>
                self -> Word -> Word -> m result
substringData self offset count
  = liftDOM
      (((toCharacterData self) ^. jsf "substringData"
          [toJSVal offset, toJSVal count])
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.substringData Mozilla CharacterData.substringData documentation> 
substringData_ ::
               (MonadDOM m, IsCharacterData self) => self -> Word -> Word -> m ()
substringData_ self offset count
  = liftDOM
      (void
         ((toCharacterData self) ^. jsf "substringData"
            [toJSVal offset, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.appendData Mozilla CharacterData.appendData documentation> 
appendData ::
           (MonadDOM m, IsCharacterData self, ToJSString data') =>
             self -> data' -> m ()
appendData self data'
  = liftDOM
      (void ((toCharacterData self) ^. jsf "appendData" [toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.insertData Mozilla CharacterData.insertData documentation> 
insertData ::
           (MonadDOM m, IsCharacterData self, ToJSString data') =>
             self -> Word -> data' -> m ()
insertData self offset data'
  = liftDOM
      (void
         ((toCharacterData self) ^. jsf "insertData"
            [toJSVal offset, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.deleteData Mozilla CharacterData.deleteData documentation> 
deleteData ::
           (MonadDOM m, IsCharacterData self) => self -> Word -> Word -> m ()
deleteData self offset count
  = liftDOM
      (void
         ((toCharacterData self) ^. jsf "deleteData"
            [toJSVal offset, toJSVal count]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.replaceData Mozilla CharacterData.replaceData documentation> 
replaceData ::
            (MonadDOM m, IsCharacterData self, ToJSString data') =>
              self -> Word -> Word -> data' -> m ()
replaceData self offset count data'
  = liftDOM
      (void
         ((toCharacterData self) ^. jsf "replaceData"
            [toJSVal offset, toJSVal count, toJSVal data']))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.data Mozilla CharacterData.data documentation> 
setData ::
        (MonadDOM m, IsCharacterData self, ToJSString val) =>
          self -> val -> m ()
setData self val
  = liftDOM ((toCharacterData self) ^. jss "data" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.data Mozilla CharacterData.data documentation> 
getData ::
        (MonadDOM m, IsCharacterData self, FromJSString result) =>
          self -> m result
getData self
  = liftDOM
      (((toCharacterData self) ^. js "data") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CharacterData.length Mozilla CharacterData.length documentation> 
getLength :: (MonadDOM m, IsCharacterData self) => self -> m Word
getLength self
  = liftDOM
      (round <$>
         (((toCharacterData self) ^. js "length") >>= valToNumber))
