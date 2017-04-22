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

// driver code

console.log(longestString(["apple","yoyo","Pennsylvania","yogurt"]));
console.log(longestString(["ab","cd","ef","ghi","jk"]));



// RELEASE 1: KEY-VALUE MATCH

// Input: two objects
// Steps: 
	// 1. Iterate through both loops
	// 2. 
// Output: 'true' if they share a key-value pair; 'false' if they do not


function matching(obj1,obj2) {
	for i in obj1 {
		for j in obj2 {
			if (obj1[i] === obj2[j]) {
				true;
			}
			else {
				false;
			}
		}
	}
}

var harry {
	name: "Harry",
	hairColor: "brown",
	school: "Hogwarts"
};

var luna {
	hairColor: "blonde",
	school: "Hogwarts",
	name: "Luna"
};

// driver code

matching(harry,luna);

// RELEASE 2: GENERATE RANDOM DATA

// Input: integer (e.g. 7)
// Steps:
// 	1. Create string holding letters of the alphabet
// 	2. Create empty array to hold the generated words
// 	3. Until the computer reaches the same number of loops as the integer...
// 	4. Generate a random number between 0 and 1
// 	5. Multiply this random number by 10 (and round up) -- this will be the number of letters in the random string
// 	6. Iterate through the string until the given length is reached...
// 	7. Generate a random number between 0 and 1
// 	8. Multiply this random number by 26 (and round up)
// 	9. Use this number as an index to select the corresponding letter in the alphabet array
// 	10. Push the letter into the array
// 	11. Once all the letters for the word have been pushed into the array, join them together
// 	12. Repeat for the remaining words, as given by the initial integer
// Output: array of n strings with random lengths and letters

function randomWordGenerator(n) {
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var randomWords = [];
	for (i=0;i<n;i++) {
		var randomLength = Math.floor((Math.random() * 10) + 1);
		var randomWord = '';
			for (j=0;j<randomLength;j++) {
				var randomLetterIndex = Math.floor((Math.random() * 26) + 1);
				var randomLetter = alphabet.substring(randomLetterIndex,randomLetterIndex+1);
				randomWord = randomWord + randomLetter;
			}
			randomWords.push(randomWord);
	}
 return randomWords;
}

(randomWordGenerator(5));

// driver code

for (var i = 0;i<10;i++) {
	var testArr = randomWordGenerator(4);
	console.log(testArr);
	console.log(longestString(testArr));
}









