import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  List  myList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("the first application "),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Icon(
            Icons.notifications_paused_rounded,
            color: Colors.amber,
            size: 50,
          ),
        ),
      ),
    );
  }
}
