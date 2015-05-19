var change = [],
    remainder;

function createChange (num) {
  change = [];
  remainder = num % 25;
  num -= remainder;
  coins(num, 25);
  console.log(remainder);
  coins(remainder, 10);
  remainder = remainder % 10;
  console.log(remainder);

  coins(remainder, 5);
  remainder = remainder % 5;
  console.log(remainder);

  coins(remainder, 1);
  return change;
}

function coins (num, coin) {
  var len = num/coin;
  while (len >= 1) {
    change.push(coin);
    len --;
  }
}

console.log(createChange(0));
console.log(createChange(12));
console.log(createChange(45));
console.log(createChange(99));
console.log(createChange(94));
console.log(createChange(100));

