import 'package:flutter/material.dart';

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  // This widget is the root of your application.
  @override
  State<PlayerApp> createState() => _PlayersAppState();
}

class _PlayersAppState extends State<PlayerApp> {
  int _counter = 0;
  List<String> playerList = <String>[
    "https://cdn.dnaindia.com/sites/default/files/2024/09/26/2654157-befunky2024-8-410-18-51.jpg?im=FitAndFill=(1200,900)//",
    "https://www.hindustantimes.com/static-content/1y/cricket-logos/players/virat-kohli.png",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202404/hardik-pandya-300628682-1x1.jpg?VersionId=aEo2j3maAzpz3IQijOuiGPPUBjGfCqsL//",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Players',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Players App"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                playerList[_counter],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_counter < playerList.length - 1) {
              _counter++;
            } else {
              _counter = 0;
            }
            setState(() {});
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
