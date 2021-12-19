import 'dart:io';
import 'game.dart';
void main() {
  var n;
  while (n == null) {
    const maxRandom = 100;
    var game = Game();
    var isCorrect = false;

    print('╔════════════════════════════════════════');
    print('║            GUESS THE NUMBER            ');
    print('╟────────────────────────────────────────');

    do {
      stdout.write('║ Guess the number between 1 and $maxRandom: ');
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);


      if (guess == null) {
        continue;
      }
      var result = game.doGuess(guess);
      var x = game.guessCount;
      if (result == 1) {
        print('║ ➜ $guess is TOO HIGH! ▲');
        print('╟────────────────────────────────────────');
      } else if (result == -1) {
        print('║ ➜ $guess is TOO LOW! ▼');
        print('╟────────────────────────────────────────');
      } else {
        print('║ ➜ $guess is CORRECT ❤, total guesses: $x');
        print('╟────────────────────────────────────────');
        isCorrect = true;
      }
    }
    while (!isCorrect);
    print('║                 THE END                ');
    print('╚════════════════════════════════════════');

    stdout.write('Play again? (Y/N) : ');
    var guess1 = stdin.readLineSync();
    if (guess1 == 'Y') {
      n = null;
    } else if (guess1 == 'y') {
      n = null;
    } else if (guess1 == 'N') {
      n = 2;
    } else if (guess1 == 'n') {
      n = 2;
    } else {
      var m=true;
      while (m) {
        stdout.write('Play again? (Y/N) : ');
        var input = stdin.readLineSync();
        if (input == 'Y'||input=='y') {
          m=false;
        }else if(input=='N'||input=='n'){
          m=false;
          n=2;
        } else {
         m=true;
        }
        guess1=input;
      }
    }
  }
}



