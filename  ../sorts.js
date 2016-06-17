// Tests - Not sure how to move this to a seperate file
var assertEqual = function(first, second){
  if( Array.isArray(first)){
    first = first.join();
    second = second.join();
  }

  if(first === second){
    console.log("!!!! Tests Pass !!!!");
  } else {
    console.log("---- Failing, Failing ----");
  }
}

// Insertion Sort
var array = [5,10,35,40,30,55,70,25,65]

// currentKey = 4
// currentArray = [2, 4, 5, 8, 10, 78, 13, 33, 29, 7, 11]
// currentIndex = 0
var slideToSort = function(array, indexToMove){
  var keyValue = array[indexToMove];

  for(var index = indexToMove; index > 0; index--){
    // console.log(keyValue < array[index - 1] )
    if(keyValue < array[index - 1]){
      array[index] = array[index - 1];
    } else {
      array[index] = keyValue;
      break;
    }
  }
  return array;
}


// currentArray = [5,10,35,40,30,55,70,25,65]
// currentIndex = 0
var insertionSort = function(array){
  for(var index = 0; index < array.length; index++){
    slideToSort(array, index);
    // console.log("Index " + index + ": " + array)
  }

  return array;
}

// console.log(slideToSort(array, 4))
assertEqual(slideToSort(array, 4), [5,10,30,35,40,55,70,25,65])
assertEqual(insertionSort(array), [5,10,25,30,35,40,55,65,70])
