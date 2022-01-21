import 'package:flutter/material.dart';

import 'TileRow.dart';

class Board extends StatelessWidget {
  final double boardWidth;
  final double boardHeight;

  const Board({
    Key? key,
    required this.boardHeight,
    required this.boardWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: boardWidth,
      height: boardHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TileRow(rowWidth: boardWidth, rowIndex: 9,),
          TileRow(rowWidth: boardWidth, rowIndex: 8,),
          TileRow(rowWidth: boardWidth, rowIndex: 7,),
          TileRow(rowWidth: boardWidth, rowIndex: 6,),
          TileRow(rowWidth: boardWidth, rowIndex: 5,),
          TileRow(rowWidth: boardWidth, rowIndex: 4,),
          TileRow(rowWidth: boardWidth, rowIndex: 3,),
          TileRow(rowWidth: boardWidth, rowIndex: 2,),
          TileRow(rowWidth: boardWidth, rowIndex: 1,),
          TileRow(rowWidth: boardWidth, rowIndex: 0,),
        ],
      ),
    );
  }
}
