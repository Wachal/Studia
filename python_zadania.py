Miasta = ['Poznan', 'Kraków', 'Warszawa', 'Wroclaw', 'Lublin']
seg =[x for x in Miasta if x[0]==['K', 'L', 'M', 'N', 'O', 'P', 'R', 'S', 'T', 'U', 'W', 'Y', 'Z']]
seg=[x for x in Miasta if len(x)>6]
seg

-------------

Miesiace = {1:'Styczeń', 2:'Luty', 3:'Marzec', 4:'Kwiecien', 5:'Maj', 6:'Czerwiec', 7:'Lipiec', 8:'Sierpien', 9:'Wrzesien', 
           10:'Pazdziernik', 11:'Listopad', 12:'Grudzien'}
a=input()

print(Miesiace[int(a)])

--------------

zbior1 = {2,3,4,3,5,6,8}
zbior2 = {2,4,5,6,7,4}
print(zbior1.union(zbior2))
print(zbior1 | zbior2)
print(zbior1.difference(zbior2))

---------------
def funkc(r):
    p=r*r*3.14
    l=2*3.14*r
    tup=(p,l)
    print(tup)
       
funkc(5)

----------------
plik = open("test.txt", "w")
if plik.writable():
    plik.write(input())
plik.close()

---------------proba
plik = open("kkgkss.txt", "a")
x=0
while True:
    
        name=input('podaj_imię ')
        if name=='': break
        surname=input('podaj_nazwisko ')
        if surname=='': break
        age=input('podaj_wiek ')
        if age=='': break
            
        x =x+1
        y=str(x)
    
        if plik.writable():
            plik.write(str(x) + ' Imię: '+str(name)+ ', Nazwisko: '+str(surname) + ', Wiek: ' + str(age) + '\n')
        else: break
    
plik.close()

plik = open("kkgkss.txt", "r")

if plik.readable():
    print(plik.read())
