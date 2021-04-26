1.------------------------------------
console.log("wiadomosc")

2.-------------------------------------
function interpolacja() {
  var slowo1 = "kot"
  var slowo2 = "lubi"
  var slowo3 = "jesc"
  console.log(slowo1 + slowo2 + slowo3)

}

interpolacja();

3.------------------------------------
function dzielenie(x, y) {
  y=x/y
  console.log(y)
}

dzielenie(2,3);

4.------------------------------------
function dzielenie(x, y) {
  y=x*y
  console.log(y)
}

dzielenie(2,3);

5.-----------------------------------
function kolo(r) {
  if(r<0){
  console.log("musisz podać dodatnią liczbę")
  }
  else{
  pole = Math.PI*(r*r);
  pole_za = pole.toFixed(2);
  obwod = 2*r*Math.PI;
  obwod_za=obwod.toFixed(2);
  console.log("pole:" + pole_za);
  console.log("obowd:" + obwod_za);
  }
  
}

kolo(3);

6.------------------------------------
function prostokat(x,y) {
  if(x<0 || y<0){
  console.log("musisz podać dodatnią liczbę")
  }
  else{
  pole = x*y;
  obwod = x+x+y+y;
  przekatna = Math.sqrt((x*2)+(y*2));
  console.log("Pole: "+pole);
  console.log("Obwod: "+obwod);
  console.log("Przekątna: "+przekatna);
  }
  
}

prostokat(3,5);

7.----------------------------------------
function cwiartki(x, y) {
  if (x > 0 & y > 0) {
    console.log("pierwsza ćwiartka")
  }
  if (x < 0 & y > 0) {
    console.log("druga ćwiartka")
  }
  if (x < 0 & y < 0) {
    console.log("trzecia ćwiartka")
  }
  if (x > 0 & y < 0) {
    console.log("czwarta ćwiartka")
  }
}

cwiartki(3, 5);
cwiartki(-3, -5);
cwiartki(-3, 5);
cwiartki(3, -5);

8.--------------------------------------
function losowanie(x, b, a) {
for (i=0; i<x; i++){
console.log(Math.floor(Math.random()*b+a))
}
}

losowanie(10, 100, 1);
//x - ile liczb
//b a - przedzial

9.------------------------------------
tablica = [1, 3, 6, 3, 7, 56, -23];

function min_i_max() {
  console.log(Math.min.apply(null, tablica))
  console.log(Math.max.apply(null, tablica))
}

min_i_max();

10.--------------------------------------
function liczb() {
  for(i=1; i<26; i++){
  console.log(i);
  }
}

liczb();




11.---------------------------------------
function palin(slowo) {

  odw = slowo.split('').reverse().join('');

  if (slowo === odw) {
    return true;
  } else {
    return false;
  }
}

console.log(palin("kajak"));
