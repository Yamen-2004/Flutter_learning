import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(width: 200, height: 200, color: Colors.blue),
              Container(width: 150, height: 150, color: Colors.red),
              Positioned(
                bottom: 0,
                right: 0,
                left: 150,
                top: 0,
                child: Container(width: 50, height: 50, color: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
