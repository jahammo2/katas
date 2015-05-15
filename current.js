function createChange(num) {
  change = [];
  remainder = num % 25;
  num -= remainder
  createCoins(num, 25);
  createCoins(remainder, 10);
  remainder = remainder % 10;
  createCoins(remainder, 5);
  remainder = remainder % 5;
  createCoins(remainder, 1);
  return change;
}

var change = [],
    remainder;

function createCoins (num, coin) {
  var len = num/coin;
  while (len >= 1) {
    change.push(coin);
    len --;
  }
}

console.log(createChange(0));
console.log(createChange(23));
console.log(createChange(67));
console.log(createChange(100));
