--straznik
abs::Float->Float
abs x=if x<0 then (-x) else x

abs2 x
	|x<0=(-x)
	|otherwise =x
	
min x y
 |x<y=x
 |otherwise = y
 
sgn:: Float->Float
sgn x= if x>0 then 1
	else if x==0 then 0
	else(-1)

sgn1 x
 |x==0 =0
 |x<0=(-1)
 |otherwise =1

xor::(Bool,Bool)->Bool
xor(p,q)=case (p,q) of (True,True)->False
		       (True,False)->True
    		       (False,True)->True
 		       (False,False)->False

rown::(Bool,Bool)->Bool
rown(p,q)=case (p,q) of (True,True)->True
		        (True,False)->False
		        (False,True)->False
		        (False,False)->True

rown1::(Bool,Bool)->Bool
rown1 (p,q)=if p==q then True else False

rown2::Bool->Bool->Bool
rown2 p q
 |p==q =True
 |otherwise =False

rown3(p,q)=(p&&q)||(not p&& not q)

razy_dwa :: Num a=>a->a
razy_dwa x=2*x

comp :: Ord a=>a->a->Ordering
comp a b 
 |a>b = GT
 |a==b = EQ
 |a<b = LT

comp1 x y =if x<y then LT else if x==y then EQ else GT