function createChange (num) {
  var remainder = num % 25;
  num -= remainder;
  change(num, 25);
  num = remainder;
  remainder = num % 10;
  num -= remainder;
  change(num, 10);
  num = remainder;
  remainder = num % 5;
  num -= remainder;
  change(num, 5);
   num = remainder;
  remainder = num % 1;
  num -= remainder;
  change(num, 1);
  return changeArr;
};

function change (val, coin) {
  var len = val/coin;
  do {
    changeArr.push(coin);
    len --
  } while (len >= 1)
};

var changeArr = [];

createChange(68);
