$(function () {
  var changeArr;
  
  function addChange (num, mod) {
    changeArr = [];
    var len = num/mod;
    do {
      changeArr.push(mod);
      len --;
    } while (len >= 1);
    return changeArr;
  }

  function createChange (amt) {
    var remainder = amt % 25;
    var change = [];
    amt -= remainder;
    change.push(addChange(amt, 25));
    remainder = remainder % 10;
    change.push(addChange(remainder, 10));
    remainder = remainder % 5;
    change.push(addChange(remainder, 5));
    change.push(addChange(remainder, 1));
    
    return change;
  }

  console.log(createChange(58));
});