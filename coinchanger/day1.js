(function () {
  var createChange = function (num) {
    var leftover,
        change = [],
        pushAmt;
    leftover = num % 25;
    num -= leftover;
    pushAmt = num/25;
    for (var i = pushAmt; i >= 1; i -= 1) {
        change.push(25);
    }
    console.log(change);
      
    num = leftover;
    leftover = num % 10;
    num -= leftover;
    pushAmt = num/10;
    for (var i = pushAmt; i >= 1; i -= 1) {
        change.push(10);
    }
    console.log(change);
    
    num = leftover;
    leftover = num % 5;
    num -= leftover;
    pushAmt = num/5;
    for (var i = pushAmt; i >= 1; i -= 1) {
        change.push(5);
    }
    console.log(change);
    
    num = leftover;
    leftover = num % 1;
    num -= leftover;
    pushAmt = num/1;
    for (var i = pushAmt; i >= 1; i -= 1) {
        change.push(1);
    }
    console.log(change);
    
    
    
  };
  createChange(89);
})();