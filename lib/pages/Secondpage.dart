import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secondpage'),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Second Page"),
            )
          ],
        ),
      ),
    );
  }
}
