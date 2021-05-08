1.----------------------------
function sprawdz(num) {
    if(num < 2) return false;
    for (i = 2; i < num; i++) {
        if(num % i === 0)
            return true;
    }
    return false;
}

console.log(sprawdz(4))

2.--------------------------
function sprawdz(b, a) {

  x = b - a
  for (i = 0; i < x; i++) {
    m = (Math.floor(Math.random() * b + a))
        if(m % i === 0){
        console.log(m+" nie jest")
        }
        else{console.log(m+"  jest")}     
    }
}

console.log(sprawdz(10, 1))
//COS NIE TAK

3.-----------------------------
function sprawdz(b) {
  suma = 0;
  console.log(arguments)
  for (i = 0; i < arguments.length; i++) {
    suma += arguments[i];
    wynik = suma / arguments.length
  }
  console.log(wynik)


}

sprawdz(23, 4, 5, 5, 67, 8, 9, 9, 0)

4.------------------------
function sprawdz(a, b) {
  switch (b) {
    case 0:
      return a
      break;
    case 1:
      return a.toLowerCase();
      break;
    case 2:
      return a.toUpperCase();
      break;
    case 3:
      result = ""
      for (var i = 0; i < a.length; i++) {
        if (i % 2 == 0)
          result += a.charAt(i).toUpperCase(); 
        else
          result += a.charAt(i).toLowerCase(); 
      }

      console.log(result);
  }


}

console.log(sprawdz("chLEb", 2))

5.------------------------
function sprawdz(a, b) {
sum=0
  for (a; a < b; a++) {
    sum = sum+a;
  }
console.log(sum)
}

sprawdz(10, 20)

6.---------------------
function sprawdz(wr) {
  if (wr.length < 8) {
    console.log("wyraz musi byc dłuzszy niz 8 znakow")
  }
  console.log(wr.substr(0,3))
  console.log(wr.substr(-2,1))
  console.log(wr.substr(-4,4))
  x=wr.substr(1,12)
  y = x.split("").reverse().join("")
  console.log(y)
  
}
sprawdz("lubiesecoszjesc")

7.----------------------------
function sprawdz() {
  x = Math.floor(Math.random() * (100 + 1));
  console.log(x)
  if (x % 2 == 0) {
    console.log("Liczba parzysta")
    if (x % 3 == 0) {
      console.log("liczbna podzielna przez 3")
    } else if (x % 3 !== 0) {
      console.log("Liczba niepodzielna przez 3")
    }
  } else if (x % 2 !== 0) {
    console.log("Liczba nieparzysta")
    if (x % 3 == 0) {
      console.log("liczbna podzielna przez 3")
    } else if (x % 3 !== 0) {
      console.log("Liczba niepodzielna przez 3")
    }
  }

}
sprawdz()

8.----------------------------
function sprawdz() {
  tab = ["Python", "C#", "JavaScript", "PHP", "Java"];
  console.log(tab.length);
  console.log(tab[0]);
  console.log(tab[tab.length - 1]);
  tab.push("C++")
  console.log(tab)

  tab.push("JavaScript")
  tab.push("JavaScript")
  tab.push("JavaScript")
  tab.push("JavaScript")

  licznik = 0;
  for (i = 0; i < tab.length; i++) {
    if (tab[i] == "JavaScript") {
      licznik++;
    }
  }

  console.log("szukane słowo występuje: " + licznik + " razy")
  tab.reverse()
  console.log(tab)
  console.log(tab.sort())

  tab2 = ["R", "GO"]
  tablica = tab.concat(tab2)
  console.log(tablica)
  
 
  
}
sprawdz()

9.------------------------------
function sprawdz(a, b, c, d, e, f) {
  licznik = 0;
  tab=[]
  for (i = 0; i < 6; i++) {
    x = Math.floor(Math.random() * 49 + 0)
    tab[i]=x
    if (x == a) {
      licznik++
    }
    else if (x == b) {
      licznik++
    }
    else if (x == c) {
      licznik++
    }
    else if (x == d) {
      licznik++
    }
    else if (x == e) {
      licznik++
    }
    else if (x == f) {
      licznik++
    }
    else licznik=licznik;
  }
  console.log("Wylosowane liczby to: "+tab)
  console.log("Trafiłeś: "+licznik+" liczb!")


}
//podaj 6 liczb 
sprawdz(34, 45, 33, 22, 19, 7)
