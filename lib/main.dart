import 'package:flutter/material.dart';
import 'package:flutter_p2/pages/GridViewpage.dart';
import 'package:flutter_p2/pages/Homepage.dart';
import 'package:flutter_p2/pages/Loginpage.dart';
import 'package:flutter_p2/pages/Secondpage.dart';
import 'package:flutter_p2/pages/StackViewpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo 2",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GridViewpage(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Loginpage(), // panggil class Homepage
    );
  }
}
