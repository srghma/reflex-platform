{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE DeriveDataTypeable #-}
module JSDOM.Custom.SQLError (
    module Generated
  , SQLErrorCode(..)
  , SQLException(..)
  , throwSQLException
) where

import Prelude ()
import Prelude.Compat
import Data.Typeable (Typeable)
import Control.Exception (Exception, throwIO)
import Control.Monad.IO.Class (MonadIO(..))

import JSDOM.Types (MonadDOM(..))

import JSDOM.Generated.SQLError as Generated

data SQLErrorCode = SQLErrorUnknown
                  | SQLErrorDatabase
                  | SQLErrorVersion
                  | SQLErrorTooLarge
                  | SQLErrorQuota
                  | SQLErrorSyntax
                  | SQLErrorConstraint
                  | SQLErrorTimeout
                  deriving (Show, Eq, Enum, Typeable)
data SQLException = SQLException { sqlErrorCode :: SQLErrorCode, sqlErrorMessage :: String } deriving (Show, Eq, Typeable)

instance Exception SQLException

throwSQLException :: MonadDOM m => SQLError -> m a
throwSQLException error = do
    sqlErrorCode <- (toEnum . subtract 1 . fromIntegral) <$> getCode error
    sqlErrorMessage <- getMessage error
    liftIO $ throwIO (SQLException{..})

