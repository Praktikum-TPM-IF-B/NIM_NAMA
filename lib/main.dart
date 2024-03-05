import 'package:flutter/material.dart';
import 'package:flutter_p2/pages/Loginpage.dart';

void main() {
  runApp(const MyApp());
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
