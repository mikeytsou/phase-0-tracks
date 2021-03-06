//Release 0
var horseColors = ["blue", "red", "yellow", "green"];
var horseNames = ["Lucky Seven", "Seabiscuit", "Ruffian", "Racecar"];

horseColors.push("purple");
horseNames.push("Doofuss");
console.log(horseColors);
console.log(horseNames);

//Release 1
var horseObjects = {};
for (var i = 0; i < horseNames.length; i += 1) {
  horseObjects[horseNames[i]] = horseColors[i];
}
console.log(horseObjects);

//Release 2
function Car(make, model, year) {
  console.log("Our new car:", this);
  this.make = make;
  this.model = model;
  this.year = year;
  this.honk = function() { console.log("*HOOONK*"); };

  console.log(`A ${year} ${make} ${model} was bought!`);
}
console.log("Let go car shopping");

var newCarOne = new Car("Honda", "Accord", 2014);
console.log(newCarOne);
console.log("Congrats on your new car, honk your horn!");
newCarOne.honk();

var newCarTwo = new Car("BMW", "5 Series", 2017);
console.log(newCarTwo)
console.log("Congrats on your new car, honk your horn!");
newCarTwo.honk();

/*
var Car = {
  make: "Toyota",
  model: "Prius",
  price: 20000,
  buying: function() {
    if (this.price > 10000) {
      console.log("This car is too expensive");
    } else {
      console.log("This car is in my price range");
    }
  }
};
*/

//Release 3
//Iterate through object and returns objects keys and values
//If an object doesn't have a behavior, literal construction is preferred. If an object has behavior, constructor functions are preferred.

for (var prop in horseObjects) {
  console.log(prop, "=", horseObjects[prop]);
}

