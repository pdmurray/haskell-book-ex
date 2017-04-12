{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_haskell_test (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
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
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/patrmurr/code/patrmurr/haskell-test/.stack-work/install/x86_64-osx/lts-7.12/8.0.1/bin"
libdir     = "/Users/patrmurr/code/patrmurr/haskell-test/.stack-work/install/x86_64-osx/lts-7.12/8.0.1/lib/x86_64-osx-ghc-8.0.1/haskell-test-0.1.0.0-FxlLolieE3cKLo0nZvEDeK"
datadir    = "/Users/patrmurr/code/patrmurr/haskell-test/.stack-work/install/x86_64-osx/lts-7.12/8.0.1/share/x86_64-osx-ghc-8.0.1/haskell-test-0.1.0.0"
libexecdir = "/Users/patrmurr/code/patrmurr/haskell-test/.stack-work/install/x86_64-osx/lts-7.12/8.0.1/libexec"
sysconfdir = "/Users/patrmurr/code/patrmurr/haskell-test/.stack-work/install/x86_64-osx/lts-7.12/8.0.1/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_test_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_test_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "haskell_test_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_test_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_test_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
