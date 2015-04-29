$(function () {
  
  function addChange (num, mod) {
    var changeArr = [];
    var len = num/mod
    do {
      changeArr.push(num);
      len --;
    } while (len >= 1);
    return changeArr;
  }

  function createChange (amt) {
    var remainder = amt % 25;
    var change = [];
    amt -= remainder;
    change.push(addChange(amt, 25));
    
    
    
    
    
  }
  
  
  
  
  
  console.log(createChange(38));
  
  
});