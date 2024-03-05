import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String username = "";
  String password = "";
  bool isError = false;

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
            _usernameFields(),
            _passwordFields(),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Text(
                isError ? "Username atau password salah" : "",
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
            _buttonLogin(context),
          ],
        ),
      ),
    );
  }

  Widget _usernameFields() {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        onChanged: (value) {
          setState(() {
            username = value;
          });

          print("username: " + username);
        },
        decoration: InputDecoration(
            // menggunakan errorText
            errorText: isError ? "username salah" : null,
            labelText: 'Username',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }

  Widget _passwordFields() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });

          print("password: " + password);
        },

        // cara menggunakan enabled Border
        decoration: InputDecoration(
            labelText: 'Password',
            // errorBorder: , styling ketika error
            // focusedBorder: , styling ketika fokus pada fields
            // disabledBorder: , styling untuk border ketika fields disable
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: isError ? Colors.red : Colors.blue),
                borderRadius: BorderRadius.circular(10)),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }

  Widget _buttonLogin(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: () {
            // print("login");
            print("username: " + username);
            print("password: " + password);

            String text = "Login Sukses";

            if (username == "flutter123" && password == "password") {
              setState(() {
                isError = false;
              });
            } else {
              setState(() {
                isError = true;
              });
              text = "Login Gagal";
            }

            SnackBar snackBar = SnackBar(
              behavior: SnackBarBehavior.floating,
              content: Text(text),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Login')),
    );
  }
}
