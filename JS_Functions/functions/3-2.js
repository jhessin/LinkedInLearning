var dogName = 'Rover'
function myDog() {
  dogName = 'Fido'
  console.log(dogName + ' says woof');
  var dogName;
}

myDog()
console.log(dogName + ' says woof');
