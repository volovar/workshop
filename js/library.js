var Car = function (name, loc) {
    this.name = name;
    this.loc = loc;
};

Car.prototype = {
    move: function () {
        this.loc++;
    },
    on: function () {
        console.log(this.name + ' starting up!')
    },
    off: function () {
        console.log(this.name + ' turning off!')
    }
};

var Van = function (name, loc) {
    Car.call(this, name, loc);
};

Van.prototype = Object.create(Car.prototype);
Van.prototype.constructor = Van;
Van.prototype.grab = function () {
    console.log(this.name + ' is gonna grab ya!');
};