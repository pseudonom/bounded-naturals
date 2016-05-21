import Test.Hspec

import Numeric.Natural.Bounded

main :: IO ()
main = hspec $ do
  describe "Numeric.Natural.Bounded" $
    it "doesn't underflow" $
      0 - 1 `shouldBe` (0 :: Natural)
