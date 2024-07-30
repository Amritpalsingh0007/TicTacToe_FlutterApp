import 'package:flutter/material.dart';

class FriendVsFriend extends StatefulWidget {
  const FriendVsFriend({super.key});

  @override
  State<FriendVsFriend> createState() => _FriendVsFriendState();
}

class _FriendVsFriendState extends State<FriendVsFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children:[
          const Text("HELLO WORLD"),
          // GridView.count(
          //   crossAxisCount: 3,
          //   children: [
              
          //   ],
          //   ),
        ]
      ),
    );
  }
}