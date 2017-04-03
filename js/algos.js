// Release 0 Pseudocode

// Create a function that passes in an array of strings as a parameter
	// Iterate through the array in a for loop that stores the length of each value
	// Loop through each length to find the longest string
		// Compare the first length to 0
			// If longer, save as a variable (max_length)
			// If shorter, go to the next index

var longestString = function(array) {
	var longestWordLength = 0;
	for(i = 0; i < array.length; i++) {
		if (array[i].length > longestWordLength) {
			var longestWordLength = array[i].length;
			var longestWord = array[i];
		}
	}
	console.log("The longest word is " + longestWord + " and has " + longestWordLength + " letters!");
}

// Release 1 Pseudocode 

// Create a function that passes two objects as parameters
	// Loop through one of the objects to see if the key and/or value matches the key and/or value of the second object

var compareTwo = function(obj1, obj2) {
	for(i = 0; i < Object.keys(obj1).length; i++) {
		if (obj1[i] === obj2[i]) {
			console.log(true);
		} else {
			console.log(false);
		}
	}
}

// Release 2 Pseudocode

//  Create an array of the alphabet
//  Create a function that passes an integer as a parameter
	// Create for loop that occurs the number of times as the integer the user inputs
		// Print a random number between 1 through 26 as the index

var wordLength = function(integer) {
	var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]; 
}



// Release 0 driver code
longestString(["dog", "cat", "monkey", "frog"]);
longestString(["apples", "kiwis", "strawberries", "bananas"]);

// Release 1 driver code
compareTwo({"name": "Steve", "age": 42}, {"name": "Tony", "age": 42});