import 'package:flutter/material.dart';

class FriendVsFriend extends StatefulWidget {
  const FriendVsFriend({super.key});

  @override
  State<FriendVsFriend> createState() => _FriendVsFriendState();
}

// Logger logger= Logger();

class _FriendVsFriendState extends State<FriendVsFriend> {
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        //The below will tell us whether it is the player 1 chance or player 2
        const Text("Player 1(X) or Player 2(O)",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
        const SizedBox(height: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // logger.i(index);
                    print(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0),
                      color: Colors.amber,
                    ),
                    child: const Center(
                      child: Text(
                        "O",
                        style: TextStyle(
                            fontSize: 72, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        // const SizedBox(height: 30),
        const Text("Player 1 or 2 Wins!",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            ElevatedButton(
              onPressed: (){},
              child: const Text("Restart"),
            ),
            ElevatedButton(
              onPressed: (){},
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
