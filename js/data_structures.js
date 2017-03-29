var colors = ["red", "rasberry ombre", "blue", "aqua"];

var horse_names = ["Larry", "Trixie", "Horsie", "Pony"];

colors.push("sunshine yellow");
horse_names.push("Tonie");

console.log(colors);
console.log(horse_names);

var horse_colors = {};

for (i = 0; i < colors.length; i++) {
	horse_colors[horse_names[i]] = colors[i];
}

console.log(horse_colors);