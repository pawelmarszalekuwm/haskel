-- kwadrat kusta (kwalifikatory)

kwadrat_lista ::[Int]->[Int]
kwadrat_lista xs=[x*x|x<-xs]

lista_mniejsza2::[Int]->[Int]
lista_mniejsza2 xs=[x-2|x<-xs]

lista_razy5::[Int]->[Int]
lista_razy5 xs=[x*5|x<-xs]

--funckjca map

mniejszeo2 x= x-2

mniej2::[Int]->[Int]
mniej2 xs= map mniejszeo2 xs

kwadrat x=x*x

kw xs= map kwadrat xs

--rekurencja
m1 x=x-1
lista1 []=[]
lista1 (x:xs)=(m1 x):(lista1 xs)

lista2 xs=[x-1|x<-xs]

lista3 xs=map m1 xs