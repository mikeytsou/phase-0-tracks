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

// Release 2
// Method that takes a number and returns an array of strings equal to the number length
// Input: number
// - variable for empty array
// - iterate while array length is less than number length
// - variable for empty string, alphabet, and random number between 1 - 10 inclusive
// - iterate within loop while letters index is less than random number
// - variable for random number within alphabet length
// - add letter to empty string using the random number within alphabet
// - push string to array
// - return array after loop completes
// Output: array of strings equal to number length

function generateArray(num) {
  var array = [];

  for (var arrayIdx = 0; arrayIdx < num; arrayIdx += 1) {
    var string = "";
    var letters = "abcdefghijklmnopqrstuvwxyz"
    var length = Math.floor(Math.random() * 10) + 1;

    for (var lettersIdx = 0; lettersIdx < length; lettersIdx += 1) {
      var randomLetter = Math.floor(Math.random() * letters.length);
      string += letters[randomLetter];
    }
    array.push(string);
  }
  return array;
}

// DRIVER CODE
// Release 0
var holidays = ["labor", "veterans", "thanksgiving", "christmas"];
var teams = ["warriors", "niners", "raiders", "athletics", "giants"];

console.log(longestWord(holidays)); // returns thanksgiving
console.log(longestWord(teams)); // returns athletics

// Release 1
var reportOne = {name: "Sam", age: 21, math: 80, english: 90};
var reportTwo = {name: "Jen", age: 23, science: 75, math: 80};

console.log(findMatch(reportOne, reportTwo)); // returns true

var reportThree = {name: "Sam", age: 21, math: 80, english: 90};
var reportFour = {name: "Jen", age: 23, science: 75, math: 81};

console.log(findMatch(reportThree, reportFour)); // returns false

// Release 2
console.log(generateArray(3));

for (var i = 0; i < 10; i += 1) {
  var arrayTest = generateArray(3);
  console.log("Array of strings: " + arrayTest);
  console.log("Longest string: " + longestWord(arrayTest) + "\n");
}





