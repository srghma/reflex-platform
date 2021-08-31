{-# LANGUAGE CPP #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}
module Reflex.Dom.Builder.Class.Events where

import Data.GADT.Compare.TH
import Data.Text (Text)

data EventTag
   = AbortTag
   | BlurTag
   | ChangeTag
   | ClickTag
   | ContextmenuTag
   | DblclickTag
   | DragTag
   | DragendTag
   | DragenterTag
   | DragleaveTag
   | DragoverTag
   | DragstartTag
   | DropTag
   | ErrorTag
   | FocusTag
   | InputTag
   | InvalidTag
   | KeydownTag
   | KeypressTag
   | KeyupTag
   | LoadTag
   | MousedownTag
   | MouseenterTag
   | MouseleaveTag
   | MousemoveTag
   | MouseoutTag
   | MouseoverTag
   | MouseupTag
   | MousewheelTag
   | ScrollTag
   | SelectTag
   | SubmitTag
   | WheelTag
   | BeforecutTag
   | CutTag
   | BeforecopyTag
   | CopyTag
   | BeforepasteTag
   | PasteTag
   | ResetTag
   | SearchTag
   | SelectstartTag
   | TouchstartTag
   | TouchmoveTag
   | TouchendTag
   | TouchcancelTag

data EventName :: EventTag -> * where
  Abort :: EventName 'AbortTag
  Blur :: EventName 'BlurTag
  Change :: EventName 'ChangeTag
  Click :: EventName 'ClickTag
  Contextmenu :: EventName 'ContextmenuTag
  Dblclick :: EventName 'DblclickTag
  Drag :: EventName 'DragTag
  Dragend :: EventName 'DragendTag
  Dragenter :: EventName 'DragenterTag
  Dragleave :: EventName 'DragleaveTag
  Dragover :: EventName 'DragoverTag
  Dragstart :: EventName 'DragstartTag
  Drop :: EventName 'DropTag
  Error :: EventName 'ErrorTag
  Focus :: EventName 'FocusTag
  Input :: EventName 'InputTag
  Invalid :: EventName 'InvalidTag
  Keydown :: EventName 'KeydownTag
  Keypress :: EventName 'KeypressTag
  Keyup :: EventName 'KeyupTag
  Load :: EventName 'LoadTag
  Mousedown :: EventName 'MousedownTag
  Mouseenter :: EventName 'MouseenterTag
  Mouseleave :: EventName 'MouseleaveTag
  Mousemove :: EventName 'MousemoveTag
  Mouseout :: EventName 'MouseoutTag
  Mouseover :: EventName 'MouseoverTag
  Mouseup :: EventName 'MouseupTag
  Mousewheel :: EventName 'MousewheelTag
  Scroll :: EventName 'ScrollTag
  Select :: EventName 'SelectTag
  Submit :: EventName 'SubmitTag
  Wheel :: EventName 'WheelTag
  Beforecut :: EventName 'BeforecutTag
  Cut :: EventName 'CutTag
  Beforecopy :: EventName 'BeforecopyTag
  Copy :: EventName 'CopyTag
  Beforepaste :: EventName 'BeforepasteTag
  Paste :: EventName 'PasteTag
  Reset :: EventName 'ResetTag
  Search :: EventName 'SearchTag
  Selectstart :: EventName 'SelectstartTag
  Touchstart :: EventName 'TouchstartTag
  Touchmove :: EventName 'TouchmoveTag
  Touchend :: EventName 'TouchendTag
  Touchcancel :: EventName 'TouchcancelTag

newtype EventResult en = EventResult { unEventResult :: EventResultType en }

type family EventResultType (en :: EventTag) :: * where
  EventResultType 'ClickTag = ()
  EventResultType 'DblclickTag = (Int, Int)
  EventResultType 'KeypressTag = Word
  EventResultType 'KeydownTag = Word
  EventResultType 'KeyupTag = Word
  EventResultType 'ScrollTag = Double
  EventResultType 'MousemoveTag = (Int, Int)
  EventResultType 'MousedownTag = (Int, Int)
  EventResultType 'MouseupTag = (Int, Int)
  EventResultType 'MouseenterTag = ()
  EventResultType 'MouseleaveTag = ()
  EventResultType 'FocusTag = ()
  EventResultType 'BlurTag = ()
  EventResultType 'ChangeTag = ()
  EventResultType 'DragTag = ()
  EventResultType 'DragendTag = ()
  EventResultType 'DragenterTag = ()
  EventResultType 'DragleaveTag = ()
  EventResultType 'DragoverTag = ()
  EventResultType 'DragstartTag = ()
  EventResultType 'DropTag = ()
  EventResultType 'AbortTag = ()
  EventResultType 'ContextmenuTag = ()
  EventResultType 'ErrorTag = ()
  EventResultType 'InputTag = ()
  EventResultType 'InvalidTag = ()
  EventResultType 'LoadTag = ()
  EventResultType 'MouseoutTag = ()
  EventResultType 'MouseoverTag = ()
  EventResultType 'MousewheelTag = ()
  EventResultType 'SelectTag = ()
  EventResultType 'SubmitTag = ()
  EventResultType 'BeforecutTag = ()
  EventResultType 'CutTag = ()
  EventResultType 'BeforecopyTag = ()
  EventResultType 'CopyTag = ()
  EventResultType 'BeforepasteTag = ()
  EventResultType 'PasteTag = Maybe Text
  EventResultType 'ResetTag = ()
  EventResultType 'SearchTag = ()
  EventResultType 'SelectstartTag = ()
  EventResultType 'TouchstartTag = TouchEventResult
  EventResultType 'TouchmoveTag = TouchEventResult
  EventResultType 'TouchendTag = TouchEventResult
  EventResultType 'TouchcancelTag = TouchEventResult
  EventResultType 'WheelTag = WheelEventResult

data DeltaMode = DeltaPixel | DeltaLine | DeltaPage
  deriving (Show, Read, Eq, Ord, Bounded, Enum)

data WheelEventResult = WheelEventResult
  { _wheelEventResult_deltaX :: Double
  , _wheelEventResult_deltaY :: Double
  , _wheelEventResult_deltaZ :: Double
  , _wheelEventResult_deltaMode :: DeltaMode
  } deriving (Show, Read, Eq, Ord)

data TouchEventResult = TouchEventResult
  { _touchEventResult_altKey :: Bool
  , _touchEventResult_changedTouches :: [TouchResult]
  , _touchEventResult_ctrlKey :: Bool
  , _touchEventResult_metaKey :: Bool
  , _touchEventResult_shiftKey :: Bool
  , _touchEventResult_targetTouches :: [TouchResult]
  , _touchEventResult_touches :: [TouchResult]
  }
  deriving (Show, Read, Eq, Ord)

data TouchResult = TouchResult
  { _touchResult_identifier :: Word
  , _touchResult_screenX :: Int
  , _touchResult_screenY :: Int
  , _touchResult_clientX :: Int
  , _touchResult_clientY :: Int
  , _touchResult_pageX :: Int
  , _touchResult_pageY :: Int
  }
  deriving (Show, Read, Eq, Ord)

deriveGEq ''EventName
deriveGCompare ''EventName
