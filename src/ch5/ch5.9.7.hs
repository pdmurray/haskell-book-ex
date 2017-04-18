munge :: (x -> y) -> (y -> (w,z)) -> x -> w 
munge xY yWZ x = fst (yWZ (xY x))