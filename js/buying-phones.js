const TAX_RATE = 0.08;
const PHONE_PRICE = 99.99;
const ACCESSORY_PRICE = 9.99;
const SPENDING_THRESHOLD = prompt('Welcome, let\'s begin with a question.\nHow much money is in your bank account?');

function calculatePriceWithTax (price) {
    return formatPrice(price + (price * TAX_RATE));
}

function formatPrice (price) {
    var price = Number(price);

    return '$' + String(price.toFixed(2));
}

var purchasePrice = 0;

while (purchasePrice < SPENDING_THRESHOLD) {
    purchasePrice += PHONE_PRICE;

    if (purchasePrice >= SPENDING_THRESHOLD) {
        purchasePrice -= PHONE_PRICE;
        break;
    } else {
        purchasePrice += ACCESSORY_PRICE;
    }
}

purchasePrice = calculatePriceWithTax(purchasePrice);
console.log('You have ' + formatPrice(SPENDING_THRESHOLD) + ' in your bank account.')
console.log('Your bill is: ' + purchasePrice);