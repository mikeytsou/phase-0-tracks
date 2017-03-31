// Release 0
// Method that takes an array of strings and returns the longest string
// Input: array of strings
// - variable for current string
// - variable for longest string
// - iterate through each element in array
// - assign first element as current string variable
// - count length of each element and assign to longest string variable if longer than current string variable
// - return longest string variable
// Output: longest string

function longestPhrase(array) {
  var longestWord = null;

  for (var i = 0; i < array.length; i += 1){
    var currentWord = array[i];

    if (longestWord == null) {
      longestWord = currentWord;
    } else if (currentWord.length > longestWord.length) {
      longestWord = currentWord;
    }
  }
  return longestWord
}

// DRIVERCODE
var holidays = ["labor", "veterans", "thanksgiving", "christmas"];
var teams = ["warriors", "niners", "raiders", "athletics", "giants"];

console.log(longestPhrase(holidays));
console.log(longestPhrase(teams));
