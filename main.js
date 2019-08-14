var Jimp = require('jimp');

const baseX = 1930
const baseY = 150
const baseZ = 10010

//console.log(`/fill ${baseX} ${baseY+1} ${baseZ+2} ${baseX} ${baseY+1} ${baseZ+2} minecraft:white_wool`);

Jimp.read('test.png', (err, image) => {
    if (err) throw err;

    image.scan(0, 0, image.bitmap.width, image.bitmap.height, function(x, y, idx) {
        // x, y is the position of this pixel on the image
        // idx is the position start position of this rgba tuple in the bitmap Buffer
        // this is the image
       
        var red = this.bitmap.data[idx + 0];
        var green = this.bitmap.data[idx + 1];
        var blue = this.bitmap.data[idx + 2];
        var alpha = this.bitmap.data[idx + 3];

        var color = 'black';
        if (red === 255 && green === 255 && blue === 255) {
            color = 'white';
        }

        var blockX = baseX - x;
        var blockY = baseY - y;
        var blockZ = baseZ;

        console.log(`/setblock ${blockX} ${blockY} ${blockZ} minecraft:${color}_wool`);
        // console.log(`/fill ${blockX} ${blockY} ${blockZ} ${blockX} ${blockY} ${blockZ} minecraft:${color}_wool`);
        // console.log(`/tp Sirikon ${blockX} ${blockY} ${blockZ} 0 0`)
        // rgba values run from 0 - 255
        // e.g. this.bitmap.data[idx] = 0; // removes red from this pixel
      });
});
