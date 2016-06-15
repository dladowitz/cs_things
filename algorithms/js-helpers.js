var assertEqual = function(first, second){
  if( Array.isArray(first)){
    first = first.join();
    second = second.join();
  }

  if(first === second){
    console.log("Tests Pass!");
  } else {
    console.log("Failing, Failing.");
  }
}
