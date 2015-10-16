var c = document.querySelector('#c');
var ctx = c.getContext('2d');
// var data = ctx.getImageData(0, 0, c.width, c.height);
var gsbutton = document.querySelector('.grayscaler');

c.width = document.querySelector('.container').offsetWidth;
c.style.background = '#eee';

var image = new Image();
image.onload = function () {
    ctx.drawImage(image, 0, 0);
    // makeGrayScale();
}

image.src = './walker.jpg';

c.addEventListener('click', handleMouseClick, false);
gsbutton.addEventListener('click', makeGrayScale, false);

function handleMouseClick (e) {
    var x = e.clientX - c.offsetLeft;
    var y = e.clientY - c.offsetTop;
    console.log("x and y: " + x + ', ' + y);
}

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

function makePixelGrayScale (r, g, b, a) {
    var y = (0.3 * r) + (0.59 * g) + (0.11 * b);
    return {r: y, g: y, b: y, a: y};
}

function makeGrayScale () {
    var r, g, b, a;
    var imageData = ctx.getImageData(0, 0, c.width, c.height);
    var numPixels = imageData.data.length / 4;

    for (var i = 0; i < numPixels; i++) {
        r = imageData.data[i * 4 + 0];
        g = imageData.data[i * 4 + 1];
        b = imageData.data[i * 4 + 2];
        a = imageData.data[i * 4 + 3];
        pixel = makePixelGrayScale(r,g,b,a);
        imageData.data[i * 4 + 0] = pixel.r;
        imageData.data[i * 4 + 1] = pixel.g;
        imageData.data[i * 4 + 2] = pixel.b;
        imageData.data[i * 4 + 3] = pixel.a;
    }

    ctx.putImageData(imageData, 0, 0);
}


// paintGreen(data);