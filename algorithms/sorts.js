var array = [2, 5, 8, 10, 4, 78, 13, 33, 29, 7, 11]

// currentKey = 4
// currentArray = [2, 4, 5, 8, 10, 78, 13, 33, 29, 7, 11]
// currentIndex = 0
var slideToSort = function(array, indexToMove){
  var keyValue = array[indexToMove];

  for(var index = indexToMove; index > 0; index--){
    if(keyValue < array[index - 1]){
      array[index] = array[index - 1];
    } else {
      array[index] = keyValue;
    }
  }
  return array;
}

console.log(slideToSort(array, 4))
