data LeafTree a = Leaf a | Branch (LeafTree a) (LeafTree a)

removeIf :: (a -> Bool) -> LeafTree a -> Maybe (LeafTree a)
removeIf f tree = Just tree

main = display "hello world"