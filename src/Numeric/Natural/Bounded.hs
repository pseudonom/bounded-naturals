{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Numeric.Natural.Bounded
  ( Natural
  )
  where

import Data.Bits
import Data.Data
import Data.Ix
import qualified Numeric.Natural as GHC
import Text.Printf

newtype Natural
  = Natural GHC.Natural
  deriving (Eq, Enum, Integral, Data, Ord, Read, Real, Show, Ix, Bits, PrintfArg)

instance Num Natural where
  Natural x + Natural y = Natural $ x + y
  Natural x * Natural y = Natural $ x * y
  x - y = fromInteger $ max 0 (fromIntegral x - fromIntegral y)
  abs x = x
  signum _ = Natural 1
  fromInteger = Natural . fromInteger
