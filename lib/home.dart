import 'package:flutter/material.dart';

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
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page"),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context) => About()),);
                Navigator.pushNamed(context, "/about");
              },
              child: Text("Go to about Page"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        label: "about"),
        BottomNavigationBarItem(icon: Icon(Icons.lock),
        label: "contact")

      ]),
    );
  }
}
