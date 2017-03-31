// Release 0 Pseudocode

// Create a function that passes in an array of strings as a parameter
	// Iterate through the array in a for loop that stores the length of each value
	// Loop through each length to find the longest string
		// Compare the first length to 0
			// If longer, save as a variable (max_length)
			// If shorter, go to the next index

var longestString = function(array) {
	for(i = 0; i < array.length; i++) {
		console.log(array[i].length);
	}
}

longestString(["dog", "cat", "monkey"]);