import 'dart:ffi';
import 'dart:io';
import "dart:math";

void main(List<String> arguments) {
  print('choose the biggest possible number');
  int maxNum = getInput();
  print(maxNum);

  print("start guessing!");
  while (true) {
    int parsedInput = getInput();
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

int getInput() {
  stdout.write("please enter a number: ");
  String? input = stdin.readLineSync();
  if (input == '') {
    print("enter a valid number");
    return 10;
  } else {
    int parsedInput = int.parse(input!);
    return parsedInput;
  }
}
