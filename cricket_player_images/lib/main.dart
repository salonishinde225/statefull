import "package:flutter/material.dart";

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  int _counter=0;
  List playerList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoFUx-9c2FS0Flj2pcoApdrBnNW17cXl51Fw&s",
    "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTovh-npe6iL5VnAMceetdX6ZXWdBTZFWqItA&s",
    "https://images-cricketcom.imgix.net/sachin-tendulkar-1693132548682?fit=crop&crop=face&auto=format&ixlib=react-9.8.0&h=250&w=180"
  ];
  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PlayerApp"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                playerList[_counter],
                height: 500,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_counter < playerList.length - 1) {
              _counter++;
              }else{
                _counter=0;
              }
              setState(() {});
            },
          
          backgroundColor: Colors.purple,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
