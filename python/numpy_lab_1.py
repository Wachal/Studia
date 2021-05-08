import numpy as np
ar1 = np.array([[3,5], [4,5]])
ar2 = np.array([[7,2], [1,1]])
sum = ar1+ar2
print(sum)
il = ar1*ar2
print(il)

---------------
2.
import numpy as np
import matplotlib.pyplot as plt
import random
tab=[0]
c=0
for x in range(100):
   a=random.randrange(-1, 2)
   c=a+c
   tab.append(c)

arr1=np.array(tab)
print(arr1)             
plt.plot(arr1)
plt.show()
print(arr1.max())
print(arr1.min())

do symulowania 50 tablic-----------
tablica =[0]
n=0
for x in range (50):
    for x in range(100):
        v=random.randrange(-1, 2)
        n=v+n
        tablica.append(n)
        
print(tablica)

to jest symulowanie ale raczej nie o to chodzi
-------------------------------------------------
3.
import pandas as pd
from pandas import Series, DataFrame
mylist = list('abcedfghijklmnopqrstuvwxyz')
obj = pd.Series(mylist)
obj

import pandas as pd
import numpy as np
from pandas import Series, DataFrame
myarr = np.arange(26)
objj = pd.Series(myarr)
objj

import pandas as pd
import numpy as np
from pandas import Series, DataFrame
mylist = list('abcedfghijklmnopqrstuvwxyz')
myarr = np.arange(26)
mydict = dict(zip(mylist, myarr))
mydict = pd.Series(mydict)
mydict

---------------------------------------
4.
tabela

import pandas as pd
import numpy as np
from pandas import Series, DataFrame
data = {
        'nr rejestru' :[2,4,6,8,10,12,14],
       'miasto wojewódzkie' :['Wrocław','Bydgoszcz/Toruń','Lublin','Gorzów Wielkopolski/Zielona Góra','Łódź','Kraków','Warszawa' ],
         'powierzchnia': [19946.70, 19946.70, 25122.46, 13987.93, 18218.95, 15182.79, 35558.47],
         'ludność': [2904198, 2086210, 2139726, 1018084, 2493603, 3372618, 5349114]}
tak = pd.DataFrame(data, index=['dolnośląskie','kujawsko-pomorskie','lubelskie','lubuskie','łódzkie','małopolskie', 'mazowieckie'])

powierzchnia
