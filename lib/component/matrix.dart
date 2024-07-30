import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:logger/web.dart';

class Matrix extends StatefulWidget {
  final List<String> display;
  final String chance;
  const Matrix({super.key, required this.display, required this.chance});

  @override
  State<Matrix> createState() => _MatrixState();
}

class _MatrixState extends State<Matrix> {
  Logger logger= Logger();
  bool player1= true;
  late String _chance;


  void _fillValue(int index){
    setState((){
    if(player1){
      
      player1= false;
      widget.display[index]= 'X';
      _chance= "Player 1(X)";
    }else{
      player1= true;
      widget.display[index]= 'O';
      _chance= "Player 2(O)";
    }

    });
  }

  @override
  void initState(){
    _chance= widget.chance;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                _fillValue(index);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0),
                  color: Colors.amber,
                ),
                child: Center(
                  child: Text(
                    widget.display[index],
                    style: const TextStyle(fontSize: 72, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
