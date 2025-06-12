import 'package:flutter/material.dart';
import 'package:myapp/contact.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Contact()));
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        actions: [
          Icon(Icons.home),
          IconButton(onPressed: () {}, 
          icon: Icon(Icons.person))
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Text("Home Page"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
            child: Text("Go to about Page"),
          ),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Row(
        children: [
          Text("About Page"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Text("Go to Home Page"),
          ),
        ],
      ),
    );
  }
}
