// Pseudocode
// Create function that takes a string as the parameter
// For each letter in the string, move it to the equal position backwards. For instance, if it's the second letter from the left, it should be in the second position from the right.
	// With Ruby, I know you can turn a string into an array, do .reverse on it, and then turn it back into a string. Can we do this in Javascript? Maybe the syntax will be different.

// function reverse(string) {
// 	var splitString = string.split('');
// 	var reverseString = splitString.reverse();
// 	var newString = reverseString.join('');
// 	console.log(newString);
// }

function reverse(string) {
	var newString = string.split('').reverse().join('');
	console.log(newString);
}

reverse("hey there");

if(1 == 1) {
	reverse("oh you!");
} else {
	console.log("Pretty sure this won't print.");
}