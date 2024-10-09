import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              child: Container(
                height: 400,
                width: 400,
                child: Image.network(
                  "",
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: const Text(
                    "Nike Air Force 1'07",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,

                

                    ),
                  ),
                ),
              ),
            

              )
            ),
          ],
        ),
      ),
    );
  }
}
