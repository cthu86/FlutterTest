import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  count += 1;
                });
              },
              icon: Icon(Icons.add),
            ),
            Text("Count is $count", style: TextStyle(fontSize: 30)),
            IconButton(
              onPressed: () {
                setState(() {
                  if (count > 0) {
                    count -= 1;
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Less than 0")),
                    );
                  }
                });
              },
              icon: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
