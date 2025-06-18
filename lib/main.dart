import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(width: 2, color: Colors.blue),
            boxShadow: [
              BoxShadow(color: Colors.blue, offset: Offset(12.0, 0.0), blurRadius: 2),
            ]

          ),
          child: Text("Hello Flutter"),
          
          
                ),
        )),
    );
  }
}
