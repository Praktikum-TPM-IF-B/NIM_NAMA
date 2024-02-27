import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StackViewpage extends StatelessWidget {
  const StackViewpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StackViewpage')),
      //   body: Stack(children: [
      //     Container(
      //       color: Colors.red,
      //       height: 100 * 2,
      //       width: 100 * 2,
      //     ),
      //     Container(
      //       color: Colors.green,
      //       height: 80 * 2,
      //       width: 80 * 2,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       height: 60 * 2,
      //       width: 60 * 2,
      //     ),
      //   ]),
      // );
      body: IndexedStack(index: 2, children: [
        // 0
        Container(
          color: Colors.red,
          height: 100 * 2,
          width: 100 * 2,
        ),

        // 1
        Container(
          color: Colors.green,
          height: 80 * 2,
          width: 80 * 2,
        ),

        // 2
        Container(
          color: Colors.blue,
          height: 60 * 2,
          width: 60 * 2,
        ),
      ]),
    );
  }
}
