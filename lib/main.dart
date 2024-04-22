import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({super.key});

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 2;
  int bottem = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 51, 51, 51),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'سنگ کاغذ قیچی',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 167, 167, 165),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 23, 22, 22),
        ),
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/$top.png',
              height: 100,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    top = Random().nextInt(3) + 1;
                    bottem = Random().nextInt(3) + 1;
                  });
                },
                child: const Text(
                  'شروع بازی',
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 165),
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                )),
            Image.asset(
              'images/$bottem.png',
              height: 100,
            ),
          ],
        )),
      ),
    );
  }
}
