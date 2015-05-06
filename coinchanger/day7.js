describe("createChange()", function () {
    beforeEach(function () {
        var remainder,
        length,
        changeArray = [],
        currentChange = [];
    });
        
    var change = function (num, coin) {
        currentChange = [];
        remainder = num % coin;
        num -= remainder;
        length = num/coin;
        do {
            currentChange.push(coin)
            length --;
        } while (length >= 1);
        return currentChange;
    };
    
    var coins = function (val, coin) {
        val = remainder;
        remainder = val % coin;
        val -= remainder;
        changeArray.push(change(val, coin));
    };
    
    var createChange = function (val) {
        remainder = val % 25;
        val -= remainder;
        coins(val, 25);
        coins(val, 10);
        coins(val, 5);
        coins(val, 1);
        console.log(changeArray);
        
        return changeArray;
    };

    it("should return 2 quarters if 50 cents", function() {
        expect(change(50, 25)).toBe([25, 25]);
    });
    
    it("should return 1 dime if 10 cents", function () {
        expect(change(10, 10)).toBe([10]);
    });
    
    it("should return 1 dime and 2 pennies if 12 cents", function () {
        coins(75, 25);
        expect(changeArray).toBe([[ 25, 25, 25 ]]);
    });
    
    it("should return 1 dime and 2 pennies if 12 cents", function () {
        expect(createChange(12)).toBe([[10],[1,1]]);
    });
});

