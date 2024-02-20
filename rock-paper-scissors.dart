import 'dart:io';
import 'dart:math';

enum Move { Rock, Paper, Scissors }

void main() {
  //final rand=Random();
  while (true) {
    stdout.write('Rock Paper Scissors (r/p/s) ? : ');
    final yourChoice = stdin.readLineSync();

    if (yourChoice == 'r' || yourChoice == 'p' || yourChoice == 's') {
      var yourMove;
      if (yourChoice == 'r')
        yourMove = Move.Rock;
      else if (yourChoice == 'p')
        yourMove = Move.Paper;
      else
        yourMove = Move.Scissors;

      final random = Random().nextInt(3);
      final computerMove = Move.values[random];

      print('Your Move : $yourMove');
      print('Computer Move : $computerMove');
      var result;
      if (yourMove == computerMove)
        result = "It's a Draw";
      else {
        if (yourMove == Move.Scissors && computerMove == Move.Paper ||
            yourMove == Move.Paper && computerMove == Move.Rock ||
            yourMove == Move.Rock && computerMove == Move.Scissors)
          result = 'You win';
        else
          result = 'You lose';
      }
      print('Result : $result');
    } else if (yourChoice == 'q')
      break;
    else
      print('Invalid Input');
  }
}
