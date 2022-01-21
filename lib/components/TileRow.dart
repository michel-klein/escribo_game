import 'package:escribo_game/components/Tile.dart';
import 'package:flutter/material.dart';

class TileRow extends StatelessWidget {
  final double rowWidth;
  final int rowIndex;

  const TileRow({
    Key? key,
    required this.rowWidth,
    required this.rowIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Tile(rowWidth: rowWidth, rowIndex: rowIndex, columnIndex: 0,),
        Tile(rowWidth: rowWidth, rowIndex: rowIndex, columnIndex: 1,),
        Tile(rowWidth: rowWidth, rowIndex: rowIndex, columnIndex: 2,),
        Tile(rowWidth: rowWidth, rowIndex: rowIndex, columnIndex: 3,),
        Tile(rowWidth: rowWidth, rowIndex: rowIndex, columnIndex: 4,),
        Tile(rowWidth: rowWidth, rowIndex: rowIndex, columnIndex: 5,),
        Tile(rowWidth: rowWidth, rowIndex: rowIndex, columnIndex: 6,),
        Tile(rowWidth: rowWidth, rowIndex: rowIndex, columnIndex: 7,),
        Tile(rowWidth: rowWidth, rowIndex: rowIndex, columnIndex: 8,),
        Tile(rowWidth: rowWidth, rowIndex: rowIndex, columnIndex: 9,),
      ],
    );
  }
}
