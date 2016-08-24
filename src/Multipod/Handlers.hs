{-# LANGUAGE OverloadedStrings #-}

module Multipod.Handlers (
    networkHandler, dataHandler, readerHandler
  ) where

import Control.Monad.Catch
import Control.Monad.IO.Class
import System.REPL

import Multipod.Network
import Multipod.PodcastData
import Multipod.PodcastReader

networkHandler :: (MonadIO m) => Handler m ()
networkHandler = Handler (\e -> liftIO $ putStrLn $ show (e :: NetworkError))

dataHandler :: (MonadIO m) => Handler m ()
dataHandler = Handler (\e -> liftIO $ putStrLn $ show (e :: DataError))

readerHandler :: (MonadIO m) => Handler m ()
readerHandler = Handler (\e -> liftIO $ putStrLn $ show (e :: ReaderError))
