var change = [],
    remainder;

function createChange (num) {
  change = [];
  remainder = num % 25;
  num -= remainder;
  coins (num, 25);
  remainder = remainder % 10;
  coins (remainder, 10);
  remainder = remainder % 5; 
  coins (remainder, 5);
  remaidner = remainder % 1;
  coins (remainder, 1);
  return change;
}

function coins (val, coin) {
  var len = val/coin;
  while (len >= 1) {
    change.push(coin);
    len --
  }
}

console.log(createChange(43));
console.log(createChange(78));
console.log(createChange(100));

