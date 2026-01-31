import 'dart:ffi';
import 'dart:io';
import "dart:math";

void main(List<String> arguments) {
  print('choose the biggest possible number');
  int maxNum = getInput(11);
  print(maxNum);

  print("start guessing!");
  while (true) {
    int parsedInput = getInput(10);
    print("you entered: $parsedInput");
    Random randGen = Random();
    int randNum = randGen.nextInt(maxNum);
    print("the answer is: $randNum");
    if (parsedInput == randNum) {
      print("you win!");
      break;
    }
  }
}

int getInput(int num) {
  stdout.write("please enter a number: ");
  String? input = stdin.readLineSync();
  if (input == '') {
    print("value set automatically");
    return num;
  } else {
    int parsedInput = int.parse(input!);
    return parsedInput;
  }
}
