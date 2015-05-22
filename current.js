var c = [],
    r;

function createChange (num) {
  c = [];
  r = num % 25;
  coins(num, 25);
  coins(r, 10);
  r = r % 10;
  coins(r, 5);
  r = r % 5;
  coins(r, 1);
  return c;
}


function coins (num, coin) {
  var len = num/coin
  while (len >= 1) {
    c.push(coin);
    len --;
  }

}

console.log(createChange(100));
console.log(createChange(25));
console.log(createChange(10));
console.log(createChange(5));
console.log(createChange(1));
console.log(createChange(0));
