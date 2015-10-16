var c = document.querySelector('#c');
var ctx = c.getContext('2d');

// editing buttons
var gsbutton = document.querySelector('.grayscaler');
var invertButton = document.querySelector('.inverter');
var saveButton = document.querySelector('.saver');

c.width = document.querySelector('.container').offsetWidth;
// c.style.background = '#eee';

var image = new Image();
image.onload = function () {
    c.width = this.width;
    c.height = this.height;
    ctx.drawImage(this, 0, 0);
}

// image file, TODO make this user selected
image.src = './walker.jpg';

// random event handler for logging mouse position
c.addEventListener('click', handleMouseClick, false);

// event handlers for image adjustments and saving
gsbutton.addEventListener('click', function () {
    alterPixels(makeGrayScale);
}, false);

invertButton.addEventListener('click', function () {
    alterPixels(invertPixels);
}, false);

// currently opens an altered image in a new window
saveButton.addEventListener('click', function () {
    var savedImage = c.toDataURL();
    window.open(savedImage);
}, false);

function handleMouseClick (e) {
    var x = e.clientX - c.offsetLeft;
    var y = e.clientY - c.offsetTop;
    console.log("x and y: " + x + ', ' + y);
}

// function to change every 10th pixel green
// TODO break this out to work with a given color
function paintGreen (imageData) {
    var numPixels = imageData.data.length;

    for (var i = 0; i < numPixels; i++) {
        if (i % 10 === 0) {
            imageData.data[i * 4 + 1] = 255;
            imageData.data[i * 4 + 3] = 255;
        }
    }

    ctx.putImageData(imageData, 0, 0);
}

// grayscale an image
// TODO make this button toggle between grayscale and full color versions
function makeGrayScale (r, g, b, a) {
    var y = (0.34 * r) + (0.5 * g) + (0.16 * b);
    return {r: y, g: y, b: y, a: a};
}

// invert colors of an image
function invertPixels (r, g, b, a) {
    return {r: (255 - r), g: (255 - g), b: (255 - b), a: a};
}

// main function to alter all pixels in an image
// takes a function to change the type of alteration
function alterPixels (fn) {
    var r, g, b, a;
    var imageData = ctx.getImageData(0, 0, image.width, image.height);
    var numPixels = imageData.data.length / 4;

    for (var i = 0; i < numPixels; i++) {
        r = imageData.data[i * 4 + 0];
        g = imageData.data[i * 4 + 1];
        b = imageData.data[i * 4 + 2];
        a = imageData.data[i * 4 + 3];
        pixel = fn(r,g,b,a);
        imageData.data[i * 4 + 0] = pixel.r;
        imageData.data[i * 4 + 1] = pixel.g;
        imageData.data[i * 4 + 2] = pixel.b;
        imageData.data[i * 4 + 3] = pixel.a;
    }

    ctx.putImageData(imageData, 0, 0);
}