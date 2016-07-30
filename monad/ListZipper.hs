type ListZipper a = ([a],[a])
goForward (x:xs,bs) = (xs, x:bs)
goBack (xs,b:bs) = (b:xs, bs)
