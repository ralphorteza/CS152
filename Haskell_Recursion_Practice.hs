-- Citation: https://en.wikibooks.org/wiki/Haskell/Recursion


-- 1.
--  takes a count and an element and returns the list which is that
-- element repeated that many times.
-- ex output:  replicate 3 'a' = "aaa"
replicate :: Int -> a -> [a]



{- 2.
 Return the element at the given 'index'. The first element is at index 0,
 the second at index 1, and so on. Note that with this function, you're
 recursing both numerically and down a list  -}
 -- uncomment below
 --(!!) :: [a] -> Int ->

 {- 3.  takes two lists and 'zips' them together, so that the first pair in the
 resulting list is the first two elements of the two lists, and so on.
 E.g. zip [1,2,3] "abc" = [(1, 'a'), (2, 'b'), (3, 'c')].

 If either of the lists is shorter than the other, you can stop once either
 list runs out.
E.g. zip [1,2] "abc" = [(1, 'a'), (2, 'b')].
-}
-- uncomment below
-- zip :: [a] -> [b] -> [(a, b)]

{- 4.
 Define length using an auxiliary function and an accumulating parameter,
 as in the loop-like alternate version of factorial.
-}
