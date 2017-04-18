// PSEUDOCODE A REVERSE METHOD
// Input: string ("hello")
// 	Steps:
// 		1. Declare method with string as the parameter
// 		2. Split the string into individual characters
// 		3. Create a new empty array
// 		4. Loop through the array and add each letter to the end of the new array
// 		5. Join all the letters together to create a string
// Output: the string, reversed ("olleh")

function reverse(str) {
	var reversedArray = [];
	var letterArray = str.split('');
	for (i=0; i<letterArray.length; i++) {
		reversedArray.unshift(letterArray[i]);
	}
	return "".concat(...reversedArray)
}

console.log(reverse("halloween"))