function change (arg) {
  changeArr = [];
  num = arg;
  amount(25);
  amount(10);
  amount(5);
  amount(1);
  console.log(changeArr);
}

var num,
    rem,
    changeArr = [],
    iter;

function len (val, div) {
  return val/div;
}

function amount (val) {
  rem = num % val;
  console.log(rem);
  num -= rem;
//   console.log(num);
//   console.log(val);
  iter = len(num, val);
  for (var i = iter; i >= 1; i --) {
    changeArr.push(val);
  }
}







change(28);