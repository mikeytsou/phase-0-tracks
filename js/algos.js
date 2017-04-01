// Release 0
// Method that takes an array of strings and returns the longest string
// Input: array of strings
// - variable for longest string
// - iterate through each element in array
// - if current element length is longer than longest string variable, current element is assigned to longest string variable
// - return longest string variable
// Output: longest string

function longestWord(array) {
  var longestWord = array[0];

  for (var i = 0; i < array.length; i += 1) {
    if (array[i].length > longestWord.length) {
      longestWord = array[i];
    }
  }
  return longestWord
}

// DRIVER CODE
var holidays = ["labor", "veterans", "thanksgiving", "christmas"];
var teams = ["warriors", "niners", "raiders", "athletics", "giants"];

console.log(longestWord(holidays));
console.log(longestWord(teams));

// Release 1
// Method that takes two objects and see if they share key-value pairs
// Input: two objects
// - iterate through object one keys
// - if object two includes same key as object one and object one and object two include the same value
// - return true
// Output: returns true or false

function findMatch(objectOne, objectTwo) {
  for (var key in objectOne) {
    if (objectTwo.hasOwnProperty(key) && objectOne[key] === objectTwo[key]) {
      return true;
    }
  }
  return false;
}

