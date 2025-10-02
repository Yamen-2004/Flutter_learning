import 'package:flutter/material.dart';
import 'package:flutter_learning/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => HomePage(),
        "/screen2": (context) => screen2(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('text field'), backgroundColor: Colors.green),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(child: Text('Welcome to the Home Page!')),

            Container(
              width: 300,
              child: TextField(
                controller: phone,
                onChanged: (value) => {
                    setState(() {})
                },

                textAlign: TextAlign.end,
                maxLines: 1,

                decoration: InputDecoration(
                  fillColor: Colors.red[100],
                  filled: true,
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            Center(child: Text(phone.text)),

            ElevatedButton(
              onPressed: () {
                setState(() {});
                print(phone.text);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
