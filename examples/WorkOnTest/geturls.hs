import Control.Concurrent
import Control.Exception
import qualified Data.ByteString as B
import Control.Applicative -- for GHC < 7.10
import Data.ByteString (ByteString)
import qualified Data.ByteString.Lazy as L
import Reflex.Dom.Core (XhrException(XhrException_Aborted))
-- import Network.HTTP.Conduit

-- getURL :: String -> IO ByteString
-- getURL url = L.toStrict <$> simpleHttp url
-----------------------------------------------------------------------------
-- Our Async API:

-- <<async
data Async a = Async (MVar (Either SomeException a)) -- <1>

async :: IO a -> IO (Async a)
async action = do
  var <- newEmptyMVar
  forkIO (do r <- try action; putMVar var r) -- <2>
  return (Async var)

waitCatch :: Async a -> IO (Either SomeException a) -- <3>
waitCatch (Async var) = readMVar var

wait :: Async a -> IO a -- <4>
wait a = do
  r <- waitCatch a
  case r of
    Left e -> throwIO e
    Right a -> return a

-- >>

-----------------------------------------------------------------------------
-- > data MyException = MyException
-- >   deriving (Show)
-- >
-- > instance Exception MyException
-- >
-- > main = do
-- >   a <- async $ do
-- >     -- we should run THIS "do" block from a child thread,
-- >     -- because if you will run from main thread you will not (obviously) see the "You should not see this message..."
-- >     a1 <- async (throwIO MyException)
-- >     a2 <- async $ do
-- >       threadDelay (1 * one_second)
-- >       putStrLn "You should not see this message, but you will, because thread a2 is not terminated"
-- >       putStrLn "If a2 is left running indefinitely, then it may cause memory leak"
-- >     wait a1 -- will throw MyException
-- >     putStrLn "Never reached"
-- >     wait a2
-- >
-- >   putStrLn "hello from main thread"
-- >   threadDelay (2 * one_second)
-- >   wait a -- will throw MyException
-- >   where
-- >     one_second = 10^6

-- >>
