describe("change()", function () {
    beforeEach(function () {
        var remainder,
        length;
        changeArray = [],
        currentChange = [];
    });
        
    var change = function (num, coin) {
        remainder = num % coin;
        num -= remainder;
        length = num/coin;
        do {
            currentChange.push(coin)
            length --;
        } while (length >= 1);
        return currentChange;
    };
    
    var createChange = function (val) {
        remainder = val % 25;
        val -= remainder;
        length = val/25;  
    };

    it("should return 2 quarters if 50 cents", function() {
        expect(change(50, 25)).toBe([25, 25]);
    });
    
    it("should return 1 dime if 10 cents", function () {
        expect(change(10, 10)).toBe([10]);
    });
});

