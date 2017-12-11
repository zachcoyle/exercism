{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_nucleotide_count (
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
version = Version [1,2,0,4] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/zach/Developer/exercism/haskell/nucleotide-count/.stack-work/install/x86_64-osx/lts-9.11/8.0.2/bin"
libdir     = "/Users/zach/Developer/exercism/haskell/nucleotide-count/.stack-work/install/x86_64-osx/lts-9.11/8.0.2/lib/x86_64-osx-ghc-8.0.2/nucleotide-count-1.2.0.4-SLrRg0CK4gKN03Rx7ZIdN"
dynlibdir  = "/Users/zach/Developer/exercism/haskell/nucleotide-count/.stack-work/install/x86_64-osx/lts-9.11/8.0.2/lib/x86_64-osx-ghc-8.0.2"
datadir    = "/Users/zach/Developer/exercism/haskell/nucleotide-count/.stack-work/install/x86_64-osx/lts-9.11/8.0.2/share/x86_64-osx-ghc-8.0.2/nucleotide-count-1.2.0.4"
libexecdir = "/Users/zach/Developer/exercism/haskell/nucleotide-count/.stack-work/install/x86_64-osx/lts-9.11/8.0.2/libexec"
sysconfdir = "/Users/zach/Developer/exercism/haskell/nucleotide-count/.stack-work/install/x86_64-osx/lts-9.11/8.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "nucleotide_count_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "nucleotide_count_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "nucleotide_count_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "nucleotide_count_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "nucleotide_count_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "nucleotide_count_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
