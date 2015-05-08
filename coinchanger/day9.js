describe("createChange()", function () {

  beforeEach(function () {
    change = [];
  });

  var change = [],
      remainder,
      len;

  var coinFun = function (val,coin) {
      len = val/coin;
      while (len >= 1) {
        change.push(coin);
        len --;
      }
      remainder = remainder % coin;
  };

  var createChange = function (num) {
    remainder = num % 25;
    num -= remainder;
    coinFun(num, 25);
    coinFun(remainder, 10);
    console.log(remainder);
    coinFun(remainder, 5);
    coinFun(remainder, 1);
    return change;
  };

  it("should create nothing if 0 change", function () {
    expect(createChange(0)).toEqual([]);
  });

  it("should create 4 quarters if 100 change", function () {
    expect(createChange(100)).toEqual([25,25,25,25]);
  });

  it("should create 1 quarter, 2 dimes, 1 penny if 46 change", function () {
    expect(createChange(46)).toEqual([25,10,10,1]);
  });

  it("should create 1 quarter, 1 dime, 1 nickel, 1 penny if 41 change", function () {
    expect(createChange(41)).toEqual([25,10,5,1]);
  });

});


