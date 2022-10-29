import 'dart:math';

var numbers = Random();
var numberslist = List<int>.generate(6, (index) => numbers.nextInt(50),);

void sortnumbers(){
  numberslist.sort();
  print(numberslist);
}