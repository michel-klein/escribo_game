import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final double rowWidth;
  final int rowIndex;
  final int columnIndex;

  const Tile({
    Key? key,
    required this.rowWidth,
    required this.rowIndex,
    required this.columnIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      width: rowWidth / 10,
      height: rowWidth / 10,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: CircleAvatar(
          backgroundColor: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  (rowIndex.toString()+columnIndex.toString()),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
