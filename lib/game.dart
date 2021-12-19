import 'dart:math';

class Game {
  static const maxRandom = 100;
  int? _answer;
  var guessCount = 0;

  Game() {
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;

  }

  int doGuess(int num) {
    guessCount++;
    if (num > _answer!) {//ทายมากไป
      return 1;
    } else if (num < _answer!) {//ทายน้อยไป
      return -1;
    } else {//ทายถูก
      return 0;
    }
  }
}
