{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_ch01 (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [1,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/wangcai/.cabal/bin"
libdir     = "/Users/wangcai/.cabal/lib/x86_64-osx-ghc-8.0.1.20161022/ch01-1.0"
dynlibdir  = "/Users/wangcai/.cabal/lib/x86_64-osx-ghc-8.0.1.20161022"
datadir    = "/Users/wangcai/.cabal/share/x86_64-osx-ghc-8.0.1.20161022/ch01-1.0"
libexecdir = "/Users/wangcai/.cabal/libexec"
sysconfdir = "/Users/wangcai/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "ch01_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "ch01_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "ch01_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "ch01_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "ch01_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "ch01_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
