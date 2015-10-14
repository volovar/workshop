var sagas = [];
var hero = aHero();
var newSaga = function () {
    var foil = aFoil();
    sagas.push(function () {
        var deed = aDeed();
        log(hero+deed+foil);
    });
};

newSaga();
sagas[0]();
sagas[0]();
newSaga();
sagas[0]();
sagas[1]();
sagas[0]();

function aHero () {
    return 'Name'
}

function aDeed () {
    return 'finds'
}

function aFoil () {
    return 'Snake'
}