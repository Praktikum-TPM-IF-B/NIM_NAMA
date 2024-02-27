import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print("login");
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
