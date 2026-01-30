import 'dart:io';
import "dart:math";

void main(List<String> arguments) {
  while (true) {
    int parsedInput = getInput();
    print("you entered: $parsedInput");
    Random randGen = Random();
    int randNum = randGen.nextInt(10);
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
  int parsedInput = int.parse(input!);
  return parsedInput;
}
