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

longestString(["dog", "cat", "monkey", "frog"]);
longestString(["apples", "kiwis", "strawberries", "bananas"]);


// Release 1 Pseudocode 

// Create a function that passes two objects as parameters
	// Loop through one of the objects to see if the key and/or value matches the key and/or value of the second object

var compareTwo = function(obj1, obj2) {
	
}