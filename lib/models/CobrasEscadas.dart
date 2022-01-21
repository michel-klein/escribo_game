import 'dart:math';

class CobrasEscadas {
  int? dado1;
  int? dado2;

  Map player1 = {
    'position': 0,
    'isTurn': true,
  };
  
  Map player2 = {
    'position': 0,
    'isTurn': false,
  };

  final Map snakeHeads = {
    16: 6,
    46: 25,
    49: 11,
    62: 19,
    64: 60,
    74: 53,
    89: 68,
    92: 88,
    95: 75,
    99: 80,
  };

  final Map ladderBottoms = {
    2: 38,
    7: 14,
    8: 31,
    15: 26,
    21: 42,
    28: 84,
    36: 44,
    51: 67,
    71: 91,
    78: 98,
    87: 94,
  };

  // CobrasEscadas({
  //   this.dado1,
  //   this.dado2,
  //   required this.player1,
  //   required this.player2,
  // });

  void sortear() {
    dado1 = (Random().nextInt(6) + 1);
    dado2 = (Random().nextInt(6) + 1);
  }

  List<int> jogar() {
    sortear();
    return [dado1!, dado2!];
  }

  String? isWinner(player) {
    if (player1['position'] == 100) {
      return 'Jogador 1 Venceu!';
    }
    if (player2['position'] == 100) {
      return 'Jogador 2 Venceu!';
    }
  }

  void changeTurn() {
    player1['isTurn'] = !player1['isTurn'];
    player2['isTurn'] = !player2['isTurn'];
  }
}
