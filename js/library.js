var Car = function (name, loc) {
    var obj = Object.create(Car.prototype);
    obj.loc = loc;
    obj.name = name;
    return obj;
};

Car.prototype = {
    move: function () {
        this.loc++;
    },
    on: function () {
        console.log(this.name + ' starting engine!');
    },
    off: function () {
        console.log(this.name + ' engine stopped!');
    }
};

// simple extend function to loop over methods
// and add them to object
function extend (obj, methods) {
    for (prop in methods) {
        obj[prop] = methods[prop];
    }

    return obj;
}