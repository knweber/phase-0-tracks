var colors = ["red", "periwinkle", "orange", "green", "rainbow"];
var names = ["Brady", "Sherman", "Crush", "Hulk", "Fairy"];

colors.push("violet");
names.push("Alexander");

var coloredHorses = {};

for (i=0;i<names.length;i++) {
	coloredHorses[colors[i]] = names[i];
}

console.log(coloredHorses);
