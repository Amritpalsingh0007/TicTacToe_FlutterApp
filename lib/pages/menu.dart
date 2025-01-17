import 'package:flutter/material.dart';
import 'package:tictactoe/pages/friend_vs_friend.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});
  @override
  MenuUi createState() => MenuUi();
}

class MenuUi extends State<StatefulWidget> {
  void _onPressed() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/forestBackground.jpg"),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/tictactoe.png"),
            Container(
                height: (0.3) * MediaQuery.of(context).size.height,
                // color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: _onPressed,
                      style: ButtonStyle(
                          padding: WidgetStateProperty.all(
                              const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0)),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.blue[400])),
                      child: const Text(
                        "vs Computer",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context)=> const FriendVsFriend())
                        );
                      },
                      style: ButtonStyle(
                          padding: WidgetStateProperty.all(
                              const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0)),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.blue[400])),
                      child: const Text(
                        "vs Player",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: _onPressed,
                      style: ButtonStyle(
                          padding: WidgetStateProperty.all(
                              const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0)),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.blue[400])),
                      child: const Text(
                        "vs Online",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
