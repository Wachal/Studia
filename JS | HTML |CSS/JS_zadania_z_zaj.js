ćwiczenie 1

//PĘTLA FOR

var tab = [2, 3, 4, 5];

function a(n1){
console.log (n1*n1)
}

for(i=0; i<tab.length; i++){
  a(tab[i]);
}

-----------
//PĘTLA FOR..OF
var tab = [2, 3, 4, 5];

function a(n1){
console.log (n1*n1)
}

for(let i of tab){
  a(i);
}

-------
//PĘTLA FOR ..IN
var tab = [2, 3, 4, 5];

function a(n1){
console.log (n1*n1)
}

for(let i in tab){
  a(tab[i]);
}

--------
//PĘTLA FOREACH
var tab = [2, 3, 4, 5];

function a(n1){
console.log (n1*n1)
}

tab.forEach(function(i){
a(i)
})


------
//FUNKCJA STRZAŁKOWA
var tab = [2, 3, 4, 5];

let a = (n1) => {
console.log (n1*n1)
}

tab.forEach(function(i){
a(i)
})
-----------------------------------------------

ćwiczenie 2

var count = (function () {
 var x = 0;
 return function () { 
 if (x%2==0){
 y = true;
 console.log(y)}
 if (x%2!==0){
 y = false;
 console.log(y)}
 return x += 1;}
})();


  count()
  count()
  count()
  count()
  count()
  count()

--------------------------------------------------

ćwiczenie 3

function suma() {
  if (arguments.length > 0) {
    returnNaN = true;
    return Array.from(arguments).reduce((sum, value) => {

      var number = parseInt(value);
      if (isNaN(number)) {
        sum = sum;
      } else {
        sum += number;
        returnNaN = false;
      }

      if (returnNaN == false) {
        return sum
      } else return "NaN";
    }, 0)
  } else return "NaN";
}
var jeden = suma(3, '6', 'dfdf', 1);
var dwa = suma('df', 'fdf', 'dfdf');
var trzy = suma();
var cztery = suma(-3, 3);
var piec = suma("5");

console.log('1: ' + jeden);
console.log('2: ' + dwa);
console.log('3: ' + trzy);
console.log('4: ' + cztery);
console.log('5: ' + piec);
