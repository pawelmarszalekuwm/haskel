sgn::Float->Float
sgn x=if x>0 then 1 else if x<0 then (-1) else 0

sgn2 x
 |x<0=(-1)
 |x>0=1
 |otherwise=0

--funkcja albo_albo(dopasowanie do wzorca)
albo_albo1::(Bool,Bool)->Bool
albo_albo1 (p,q)=case (p,q) of (True,True)->False
			       (True,False)->True
		               (False,True)->True
			       (False,False)->False

--alternatywa
alt::Bool->Bool->Bool
alt x y=if x==y then False else True

alt2 x y
 |x==y=False
 |otherwise=True

alt3::Bool->Bool->Bool
alt3 x y=x && not y || not x&&y

--implikacja logiczna
implikacja::Bool->Bool->Bool
implikacja x y=if x==True&&y==False then False else True

implikacja2 x y
 |x==True&&y==False=False
 |otherwise=True

implikacja3(p,q)=case (p,q) of (True,True)->True
			       (True,False)->False
		               (False,True)->True
			       (False,False)->True
rownowaznosc::Bool->Bool->Bool
rownowaznosc x y=if x==y then True else False

rownowaznosc2 x y
 |x==y=True
 |otherwise=False

--sprawdz-pzry pomocy straznikow ktora liczbom calkowitym ujemnym przypisuej napis "liczba mniejsza od 0",liczbom z przedzialu <0;5>

sprawdz::Integer->String
sprawdz x
 |x<0="lizcba mniejsza od 0"
 |x>5="lizcba wieksza od 5"
 |otherwise="liczba z pdzedzialu od 0 do 5"

--wyznacza pierwszy, drugi i trzeci eleent trojki uporzadkowanej
first::(a,b,c)->a
first(x,_,_)=x
second::(a,b,c)->b
second(_,y,_)=y
third::(a,b,c)->c
third(_,_,z)=z
--compare
compare::Ord a => a->a->Ordering
compare x y
 | x>y=GT
 | x<y=LT
 | otherwise=EQ








--rekurencje dla list
--1 sposob
--kwadrat_lista (definicja rekurencyjna)
kwadrat x=x*x
kwadrat_lista::[Int]->[Int]
kwadrat_lista []=[]
kwadrat_lista (x:xs)=(kwadrat x):(kwadrat_lista xs)
--podzial na glowe i ogon listy (x:L) xs = t(ogon) (x:xs), (x:t)
--glowa nowej lsity jest kwadrat od x a ogonem jest kwadrat lista od xs(kazdyelement)
--program:	kwadrat_lista [0,7,9]
--lista_mniejsza_o_1
mniejsza x=x-1
lista_mniejsza_o_1::[Int]->[Int]
lista_mniejsza_o_1 []=[]
lista_mniejsza_o_1 (x:xs)=(mniejsza x):(lista_mniejsza_o_1 xs)

--lista_razy3
razy x=x*3
lista_razy3::[Int]->[Int]
lista_razy3 []=[]
lista_razy3 (x:xs)=(razy x):(lista_razy3 xs)

--dlugosc_lista
dlugosc_lista::[Int]->Int
dlugosc_lista []=0
dlugosc_lista(x:xs)=1 + dlugosc_lista xs

--iloczyn_lista
iloczyn_lista::[Int]->Int
iloczyn_lista [x]=x
iloczyn_lista(x:xs)=x * iloczyn_lista xs

-------------------------------------
--zad2
--fun []=5
--fun (x:y)=x - fun y
--a)typ fukcji:	fun::[Int]->Int
--b)wynik dla [10,7,..2]=[10,7,4]
--fun[10,7,4]= 10-fun[7,4]=
--10-(7-fun[4])=10-(7(4-5))=2


--[0,1,2]!!1=1 --zwraca o podanym indeksie

--ostatni[1,2,3]=3
ostatni::[Int]->Int
ostatni xs=head(reverse xs)
--ostatni xs=(reverse xs)!!0
--ostatni xs=xs!!(length xs-1)

usun_ostatni::[Int]->[Int]
usun_ostatni xs=reverse(tail(reverse xs))
----------------------------------
--kwali dla list
--kwadrat_lista2
kwadrat_lista2::[Int]->[Int]
kwadrat_lista2 xs=[x*x|x<-xs]

--lista_mniejszao12
lista_mniejszao12::[Int]->[Int]
lista_mniejszao12 xs=[x-1|x<-xs]

--lista_razy_5
lista_razy_5::[Int]->[Int]
lista_razy_5 xs=[x*5|x<-xs]

------------------map
mniejsza x=x-1
listamniejsza_o1::[Int]->[Int]
listamniejsza_o1 xs=map mniejsza xs

kwadrat x=x*x
kwadrat_lista::[Int]->[Int]
kwadrat_lista xs= map kwadrat xs

lista_wiekszao2::[Int]->[Int]
wieksza x=x+2
lista_wiekszao2 []=[]
lista_wiekszao2 (x:xs)=(wieksza x):(lista_wiekszao2 xs)

lista_wiekszao2 xs=[x+2|x<-xs]

lista_wiekszao2 xs=map mniejsza xs
