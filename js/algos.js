// RELEASE 0: LONGEST PHRASE

// Input: array of strings
// Steps:
// 	1.Declare an empty string variable
// 	2.Loop through array
// 	3.If string is longer than current value of the empty string variable, assign it to that variable
// 	4. Continue until you have looped through the entire array
// 	5. The variable declared in step 1 should have a value of the longest string in the array
// Output: longest string in array

function longestString(arr) {
	var longest = ""
	for (i=0;i<arr.length;i++) {
		if (arr[i].length > longest.length) {
		  longest = arr[i];
		}
	}
	return longest;
}

longestString(["apple","yoyo","Pennsylvania","yogurt"]);



// RELEASE 1: KEY-VALUE MATCH

// Input: two objects
// Steps: 
// Output: 'true' if they share a key-value pair; 'false' if they do not


// RELEASE 2: GENERATE RANDOM DATA

// Input: integer (e.g. 7)
// Steps:
// Output: array of strings of the given integer length (e.g. 7)