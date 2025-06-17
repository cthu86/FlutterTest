import 'package:flutter/material.dart';
import 'package:myapp/about.dart';
import 'package:myapp/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {"/": (context) => Home(), "/about": (context) => About()},
    ),
  );
}



