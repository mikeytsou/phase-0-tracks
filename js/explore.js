/*
Release 0
1. What is the equivalent of nil in JavaScript?
null

2. When you declare variables in JavaScript, it's a good idea to use the var keyword (you can Google it if you're interested, or just take our word for it). We can see other differences as well: how is the naming convention in JavaScript different from Ruby?
Variables are declared by using the var keyword the naming convention requires camelCase.

3. How do you print a variable in JavaScript?
Variables are printed with console.log

4. How do you end a line of code in JavaScript?
Line of are ended with ;

5. How do you write comments in JavaScript?
Single line comments //
Multi line comments /**/

/*
Release 1
JavaScript if/else statements need () around the comparing booleans, need () around the printing string, and need {} after each conditional.
*/

/*
Release 2
1. How are functions declared in JavaScript? Try declaring a different function and calling it.
JavaScript functions are declared similarly to Ruby, however, the code block must be wrapped around {}.

2. Do JavaScript functions have implicit return? (What happens when you remove the return keyword from the add function?
JavaScript functions that lack a explicit return will implicitly return undefined. 

3. Notice that the declaration of the sayHello function has parentheses, even though sayHello doesn't take any parameters. Are those necessary? What happens if you remove them?
JavaScript functions require () to indicate that it is a function expression. Otherwise, you will get an error.

4. In Ruby, there's no need to use parentheses on a method call if you don't need to pass any arguments to the function. In the JavaScript version, does the code inside sayHello still execute if you remove the parentheses from the function call?
The function will not execute without the ().
*/

/*
Release 3
for (var i = 0; i <= 10; i += 1) {
  console.log(i);
}

for (var i = 10; i >=0; i -=1 ) {
  console.log(i);
}
*/

//Release 4
/*Pseudocode for reverse string
- declare function with string parameter
- declare var result
- loop string by declaring var i to string length and decrementing it by 1 while it's greater or equal to 0
- add var i position in the string to result
- return result
*/

function reverse(string) {
  var str = string.split("");
  var result = [];
  
  for (var i = 0; i < str.length; i += 1) {
    result.unshift(str[i]);
  }
  return result.join("");
}

//DRIVER CODE
var reverseString = reverse("dev bootcamp");

if (reverseString.length > 5) {
  console.log(`You will be attending: ${reverseString}`);
} else {
  console.log("BYE")
}

