import 'package:escribo_game/components/Board.dart';
import 'package:escribo_game/models/CobrasEscadas.dart';
import 'package:flutter/material.dart';

class SnakesLaddersApp extends StatefulWidget {
  const SnakesLaddersApp({Key? key}) : super(key: key);

  @override
  State<SnakesLaddersApp> createState() => _SnakesLaddersAppState();
}

class _SnakesLaddersAppState extends State<SnakesLaddersApp> {
  CobrasEscadas? cobrasEscadas = new CobrasEscadas();
  List<int>? dadosJogados;

  void play() {
    List<int> dados = cobrasEscadas!.jogar();
    setState(() {
      dadosJogados = dados;
      cobrasEscadas!.player1['isTurn'] = !cobrasEscadas!.player1['isTurn'];
      cobrasEscadas!.player2['isTurn'] = !cobrasEscadas!.player2['isTurn'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cobras e escadas'),
        ),
        body: LayoutBuilder(
          builder: (ctx, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Image.asset('assets\\images\\board.jpg'),
                    Board(
                      boardWidth: constraints.maxWidth,
                      boardHeight: constraints.maxWidth,
                    ),
                  ],
                ),
                TextButton(onPressed: play, child: Text("JOGAR!")),
                if (dadosJogados?.isNotEmpty != null)
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("Dados jogados:"),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text(
                        dadosJogados![0].toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text(
                        dadosJogados![1].toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ])
                else
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Dados jogados:"),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            '0',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            '0',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (cobrasEscadas!.player1['isTurn'])
                      Text('Jogador 1')
                    else if (cobrasEscadas!.player2['isTurn'])
                      Text('Jogador 2')
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
