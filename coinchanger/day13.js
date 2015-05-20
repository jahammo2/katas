var change = [],
    remainder;

function createChange (num) {
  change = [];
  remainder = num % 25;
  num -= remainder;
  coins(num, 25);
  coins(remainder, 10);
  remainder = remainder % 10;
  coins(remainder, 5);
  remainder = remainder % 5;
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


console.log(createChange(100));
console.log(createChange(78));
console.log(createChange(73));
console.log(createChange(9));
console.log(createChange(0));

