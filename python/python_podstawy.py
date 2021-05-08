Zadanie 1.
-Simple is better than complex.
Prosty kod:
a = 1
b = 4
c = 2
for i in range(6):
    x=a+2*b+c-5
print(x)

Skomplikowany kod:
a = 1
b = 4
c = 2
for i in range(6):
    x=2*b
    x=x+a
    x=x+c
    x=x-5
print(x)

-Beautiful is better than ugly.
brzydki kod:
tablica_pierwszych_wartosci = [1,2,4,56,7,43,3,2,5,7,8]
tablica_pierwszych_wartosci.pop(3)
tablica_pierwszych_wartosci.pop(2)
print(tablica_pierwszych_wartosci)

ładny kod:
tab = [1,2,4,56,7,43,3,2,5,7,8]
tab.pop(3)
tab.pop(2)
print(tab)

-Sparse is better than dense.
gęsty kod:
a = 5; b = 7; c = 8; d = 4; f = 4; g = 7; h = 9; r = 2;

if a < b or c > d:
    print(b, a, c)

rzadki kod:
a = 5; b = 7; 
c = 8; d = 4; 
f = 4; g = 7; 
h = 9; r = 2

if a < b or c > d:
    print(b)
    print(a)
    print(c)


         
--------------------------
zadanie 3.
Ciąg fibbonaciego.
def fibonacci(n):
    a = 0
    b = 1
    for i in range(0, n):
        li = a
        a = b
        b = li + b
    return a

for c in range(0, 20):
    print(fibonacci(c))
--------------------------
zadanie 4.
class square:
    def __init__(self, a):
        self.a = a
        print(a*a)

p1 = square(2)
--------------------------
zadanie 5.

class square:
    def __init__(self, a, b):
        self.a = a
        print(a*a)
        
class rectangle(square):
    def prosto(self, a, b):
        self.a = a
        self.b = b
        print(a*b)

p1 = rectangle(3, 3)
p1.prosto(2, 4)
