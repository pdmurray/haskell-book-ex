-- keep your typeclass instances for a type
-- in the same file as that type
-- we'll explain why later

data Trivial =
    Trivial'

instance Eq Trivial where
    Trivial' == Trivial' = True
    