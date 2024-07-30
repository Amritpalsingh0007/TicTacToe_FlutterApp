import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:tictactoe/component/matrix.dart';
import 'package:tictactoe/pages/menu.dart';

class FriendVsFriend extends StatefulWidget {
  const FriendVsFriend({super.key});

  @override
  State<FriendVsFriend> createState() => _FriendVsFriendState();
}


class _FriendVsFriendState extends State<FriendVsFriend> {
  Logger logger= Logger();
  final List<String> _display=['','','','','','','','',''];
  String _chance= "Player 1(X) or Player 2(O)";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: false,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'Offline vs Offline',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
        //The below will tell us whether it is the player 1 chance or player 2
        Text(_chance,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
        const SizedBox(height: 20),
        Matrix(display: _display, chance: _chance),
        // const SizedBox(height: 30),
        Text(_chance,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            ElevatedButton(
              onPressed: (){
                logger.i(_display);
                logger.i(_chance);
              },
              child: const Text("Restart"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)=> const Menu())
                  );
              },
              child: const Text("Menu"),
            ),
          ]
        ),
        // const Spacer(),
        const SizedBox(height: 230),
      ]),
    );
  }
}
