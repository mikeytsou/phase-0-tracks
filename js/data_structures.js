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