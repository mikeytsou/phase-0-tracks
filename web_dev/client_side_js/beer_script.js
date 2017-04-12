// Release 1: Include a JS File in a Page
window.onload = function() { // Loads JavaScript functions after HTML page loads

console.log("The Script is running!");
var lists = document.getElementsByTagName("li");

function changeListColor() {
  for (var i = 0; i < lists.length; i += 1) {
    if (i % 2 === 0) {
      lists[i].style.color = getRandomColor();
    } else {
      lists[i].style.color = getRandomColor();
    }
  }
}
changeListColor();

// Release 2: Add an Event Listener
function changeBackgroundColor(event) {
  console.log("Click happened! Here's the click event:");
  console.log(event);  
  document.body.style.background = getRandomColor();
}

var image = document.getElementById("guinness");
image.addEventListener("click", changeBackgroundColor);

function getRandomColor() {
  var letters = '0123456789ABCDEF';
  var color = '#';
  for (var i = 0; i < 6; i += 1) {
    color += letters[Math.floor(Math.random() * letters.length)];
  }
  return color;
}

}


