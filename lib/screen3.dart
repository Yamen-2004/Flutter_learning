import 'package:flutter/material.dart';

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 3"), backgroundColor: Colors.green),
      body: ListView(
        children: [
          Container(height: 50, color: Colors.red),
          Container(height: 50, color: Colors.blue),
          Container(height: 50, color: Colors.green),
          Container(height: 50, color: Colors.yellow),
          Container(height: 50, color: Colors.orange),
          Container(height: 50, color: Colors.purple),
          Container(height: 50, color: Colors.brown),
          Container(height: 50, color: Colors.pink),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/screen4");
              },
              child: Text("go to scrren 4"),
            ),
        ],
      ),
    );
  }
}
