import 'dart:io';

void main() {
  while (true) {
    stdout.write('Rock Paper Scissors (r/p/s) ? : ');
    final yourChoice = stdin.readLineSync();

    if (yourChoice == 'r' || yourChoice == 'p' || yourChoice == 's') {
      print('Your Move : $yourChoice');
    } else if (yourChoice == 'q') {
      break;
    } else {
      print('Invalid Input');
    }
  }
}
