import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Page"), centerTitle: true),
      drawer: Drawer(),
      body: Row(
        children: [
          Text("About Page"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Home()),
              // );
            },
            child: Text("Go to Home Page"),
          ),
        ],
      ),
    );
  }
}
