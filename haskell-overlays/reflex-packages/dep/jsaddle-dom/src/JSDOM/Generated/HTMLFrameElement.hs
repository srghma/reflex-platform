{-# LANGUAGE PatternSynonyms #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
module JSDOM.Generated.HTMLFrameElement
       (getSVGDocument, getSVGDocument_, setName, getName, setScrolling,
        getScrolling, setSrc, getSrc, setFrameBorder, getFrameBorder,
        setLongDesc, getLongDesc, setNoResize, getNoResize,
        getContentDocument, getContentWindow, setMarginHeight,
        getMarginHeight, setMarginWidth, getMarginWidth, getWidth,
        getHeight, setLocation, getLocation, getLocationUnsafe,
        getLocationUnchecked, HTMLFrameElement(..), gTypeHTMLFrameElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.getSVGDocument Mozilla HTMLFrameElement.getSVGDocument documentation> 
getSVGDocument :: (MonadDOM m) => HTMLFrameElement -> m Document
getSVGDocument self
  = liftDOM
      ((self ^. jsf "getSVGDocument" ()) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.getSVGDocument Mozilla HTMLFrameElement.getSVGDocument documentation> 
getSVGDocument_ :: (MonadDOM m) => HTMLFrameElement -> m ()
getSVGDocument_ self
  = liftDOM (void (self ^. jsf "getSVGDocument" ()))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.name Mozilla HTMLFrameElement.name documentation> 
setName ::
        (MonadDOM m, ToJSString val) => HTMLFrameElement -> val -> m ()
setName self val = liftDOM (self ^. jss "name" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.name Mozilla HTMLFrameElement.name documentation> 
getName ::
        (MonadDOM m, FromJSString result) => HTMLFrameElement -> m result
getName self = liftDOM ((self ^. js "name") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.scrolling Mozilla HTMLFrameElement.scrolling documentation> 
setScrolling ::
             (MonadDOM m, ToJSString val) => HTMLFrameElement -> val -> m ()
setScrolling self val
  = liftDOM (self ^. jss "scrolling" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.scrolling Mozilla HTMLFrameElement.scrolling documentation> 
getScrolling ::
             (MonadDOM m, FromJSString result) => HTMLFrameElement -> m result
getScrolling self
  = liftDOM ((self ^. js "scrolling") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.src Mozilla HTMLFrameElement.src documentation> 
setSrc ::
       (MonadDOM m, ToJSString val) => HTMLFrameElement -> val -> m ()
setSrc self val = liftDOM (self ^. jss "src" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.src Mozilla HTMLFrameElement.src documentation> 
getSrc ::
       (MonadDOM m, FromJSString result) => HTMLFrameElement -> m result
getSrc self = liftDOM ((self ^. js "src") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.frameBorder Mozilla HTMLFrameElement.frameBorder documentation> 
setFrameBorder ::
               (MonadDOM m, ToJSString val) => HTMLFrameElement -> val -> m ()
setFrameBorder self val
  = liftDOM (self ^. jss "frameBorder" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.frameBorder Mozilla HTMLFrameElement.frameBorder documentation> 
getFrameBorder ::
               (MonadDOM m, FromJSString result) => HTMLFrameElement -> m result
getFrameBorder self
  = liftDOM ((self ^. js "frameBorder") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.longDesc Mozilla HTMLFrameElement.longDesc documentation> 
setLongDesc ::
            (MonadDOM m, ToJSString val) => HTMLFrameElement -> val -> m ()
setLongDesc self val
  = liftDOM (self ^. jss "longDesc" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.longDesc Mozilla HTMLFrameElement.longDesc documentation> 
getLongDesc ::
            (MonadDOM m, FromJSString result) => HTMLFrameElement -> m result
getLongDesc self
  = liftDOM ((self ^. js "longDesc") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.noResize Mozilla HTMLFrameElement.noResize documentation> 
setNoResize :: (MonadDOM m) => HTMLFrameElement -> Bool -> m ()
setNoResize self val
  = liftDOM (self ^. jss "noResize" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.noResize Mozilla HTMLFrameElement.noResize documentation> 
getNoResize :: (MonadDOM m) => HTMLFrameElement -> m Bool
getNoResize self = liftDOM ((self ^. js "noResize") >>= valToBool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.contentDocument Mozilla HTMLFrameElement.contentDocument documentation> 
getContentDocument ::
                   (MonadDOM m) => HTMLFrameElement -> m Document
getContentDocument self
  = liftDOM ((self ^. js "contentDocument") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.contentWindow Mozilla HTMLFrameElement.contentWindow documentation> 
getContentWindow :: (MonadDOM m) => HTMLFrameElement -> m Window
getContentWindow self
  = liftDOM ((self ^. js "contentWindow") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginHeight Mozilla HTMLFrameElement.marginHeight documentation> 
setMarginHeight ::
                (MonadDOM m, ToJSString val) => HTMLFrameElement -> val -> m ()
setMarginHeight self val
  = liftDOM (self ^. jss "marginHeight" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginHeight Mozilla HTMLFrameElement.marginHeight documentation> 
getMarginHeight ::
                (MonadDOM m, FromJSString result) => HTMLFrameElement -> m result
getMarginHeight self
  = liftDOM ((self ^. js "marginHeight") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginWidth Mozilla HTMLFrameElement.marginWidth documentation> 
setMarginWidth ::
               (MonadDOM m, ToJSString val) => HTMLFrameElement -> val -> m ()
setMarginWidth self val
  = liftDOM (self ^. jss "marginWidth" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.marginWidth Mozilla HTMLFrameElement.marginWidth documentation> 
getMarginWidth ::
               (MonadDOM m, FromJSString result) => HTMLFrameElement -> m result
getMarginWidth self
  = liftDOM ((self ^. js "marginWidth") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.width Mozilla HTMLFrameElement.width documentation> 
getWidth :: (MonadDOM m) => HTMLFrameElement -> m Int
getWidth self
  = liftDOM (round <$> ((self ^. js "width") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.height Mozilla HTMLFrameElement.height documentation> 
getHeight :: (MonadDOM m) => HTMLFrameElement -> m Int
getHeight self
  = liftDOM (round <$> ((self ^. js "height") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.location Mozilla HTMLFrameElement.location documentation> 
setLocation ::
            (MonadDOM m, ToJSString val) =>
              HTMLFrameElement -> Maybe val -> m ()
setLocation self val
  = liftDOM (self ^. jss "location" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.location Mozilla HTMLFrameElement.location documentation> 
getLocation ::
            (MonadDOM m, FromJSString result) =>
              HTMLFrameElement -> m (Maybe result)
getLocation self
  = liftDOM ((self ^. js "location") >>= fromMaybeJSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.location Mozilla HTMLFrameElement.location documentation> 
getLocationUnsafe ::
                  (MonadDOM m, HasCallStack, FromJSString result) =>
                    HTMLFrameElement -> m result
getLocationUnsafe self
  = liftDOM
      (((self ^. js "location") >>= fromMaybeJSString) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameElement.location Mozilla HTMLFrameElement.location documentation> 
getLocationUnchecked ::
                     (MonadDOM m, FromJSString result) => HTMLFrameElement -> m result
getLocationUnchecked self
  = liftDOM ((self ^. js "location") >>= fromJSValUnchecked)
