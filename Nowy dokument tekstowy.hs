sprawdz:: Int-> String

sprawdz x
 |x < 0 = "liczba mniejsza od 0"
 |x > 10 = "liczba wieksza od 10"
 |otherwise = "liczba z przedzialu od 0 do 10"

compare:: Ord a=>a->a->Ordering
compare x y
 |x>y =GT
 |x<y =LT
 |otherwise =EQ

pierwiastki:: Float -> Float -> Float -> String

pierwiastki a b c
 |b*4*a*c >0 = "dwa pierwiastki"
 |b*4*a*c < 0 = "brak piewiastkow"
 |otherwise = "jeden pierwiastek"

-- LISTY

kwadrat x=x*x

kwadrat_lista::[Int]->[Int]
kwadrat_lista []=[]
kwadrat_lista(x:xs) = (kwadrat x):(kwadrat_lista xs)
--

mniejsze x=x-1

mniejsze_o1::[Int]->[Int]
mniejsze_o1 []=[]
mniejsze_o1(x:xs) = (mniejsze x):(mniejsze_o1 xs)
--

razy x=x*3

razy3::[Int]->[Int]
razy3 []=[]
razy3(x:xs) = (razy x):(razy3 xs)

dlugosc_listy::[Int]->Int
dlugosc_listy[]=0
dlugosc_listy(x:t)=1+(dlguosc_listy)
