var c = document.querySelector('#c');
var ctx = c.getContext('2d');

var image = new Image();

image.onload = function () {
    console.log("Loaded image");
    // ctx.drawImage(image, 0, 0, c.width, c.height);
    // var savedImage = c.toDataURL();
    // window.open(savedImage);

    // ctx.fillRect(50,50,150,150);
    ctx.strokeStyle = '#33CC33'
    ctx.strokeRect(50,50,100,100);

    ctx.beginPath();
    ctx.moveTo(75,75);
    ctx.lineTo(125,125);
    ctx.lineTo(125,75);

    ctx.fillStyle = 'maroon';
    ctx.fill();

    ctx.font = '36px Impact';
    ctx.textAlign = 'center';

    ctx.fillStyle = '#fff';
    ctx.fillText('Hello world!', c.width / 2, 40);

    ctx.strokeStyle = '#000';
    ctx.lineWidth = 3;
    ctx.strokeText('Hello world!', c.width / 2, 40);

    // ctx.scale(x, y)
    // ctx.translate(x,y)
}

image.src = "http://townandcountryremovals.com/wp-content/uploads/2013/10/firefox-logo-200x200.png";