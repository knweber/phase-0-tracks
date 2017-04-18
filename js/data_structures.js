var colors = ["red", "periwinkle", "orange", "green", "rainbow"];
var names = ["Brady", "Sherman", "Crush", "Hulk", "Fairy"];

colors.push("violet");
names.push("Alexander");

var coloredHorses = {};

for (i=0;i<names.length;i++) {
	coloredHorses[colors[i]] = names[i];
}

console.log(coloredHorses);

function Car(make,model,year) {
	this.make = make;
	this.model = model;
	this.year = year;

		if (year < 2000) {
			console.log("The speed for this car is 100 mph");
		} else {
			console.log("The speed for this car is 200 mph");
		}

	this.noise = function() { console.log("VROOOOMMMMMM!"); };
}

var car1 = new Car("Chevy","Camero",2010);
var car2 = new Car("Toyota","Corolla",1996);

console.log(car1);
car1.noise();
console.log(car2);
car2.noise();