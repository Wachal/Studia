//utworzenie klasy osoba 
class Osoba {
  constructor(name, age) {
    this.name = Osoba.formatujImie(name);
    this.age = age;
  }
//setter dla imieia który formatuje od razu string name
  set nam(nam) {
    this.name = Osoba.formatujImie(nam);

  }
  get nam() {
    return this.name
  }

//setter dla wieku z try/catch. i wypisanie błędów w konsoli 
//rangeError jezeli wiek jest ujemny, TypeError jezeli wiek jest stringiem 
  set ag(ag) {
    if (typeof(ag)!="number" || ag <= 0) {

      try {
        if (typeof(ag)!="number") {
          throw new TypeError();
        } else {
          try {
            if (ag <= 0) {
              throw new RangeError();
            }
          } catch (e) {
            console.log(e.name);
          }
        }
      } catch (e) {
        console.log(e.name);
      }

    } else {
      this.age = ag;
    }
  }


  get ag() {
    return this.age
  }

  //funckja przedstaw wyswietlająca imie i wiek 
  przedstaw() {
    return "jestem " + this.name + " mam " + this.age + " lat";
  }

  //zwiększa pierwszą literę a reszte stringa smniejsza
 static formatujImie(nam) {
    return nam.charAt(0).toUpperCase() + nam.slice(1).toLowerCase();
  }
}

ktos = new Osoba("marek", 25);
ktos.nam = "KAMIL";
ktos.ag = 23;
ktos.ag = -23;
ktos.ag = "asdasd";
console.log(ktos.przedstaw());
//-----------------ĆW2-------------------------
//podklasa pracownik, super() pobiera zawartosc klasy osoba
class Pracownik extends Osoba {
  constructor(name, age, zawod) {
    super(name, age);
    this.zawod = zawod;
  }
  //spuer(). pobiera zawwartosc funckji przedstaw
  przedstaw() {
    return super.przedstaw() + " i pracuje jako " + this.zawod;
  }
}

//tworzenie i wypisanie pracownika
pracownik = new Pracownik("kasia", 34, "pielęgniarka ");
console.log(pracownik.przedstaw());
//zmiana imienia i wieku
pracownik.nam = "ola";
pracownik.ag = 45;
console.log(pracownik.przedstaw())
