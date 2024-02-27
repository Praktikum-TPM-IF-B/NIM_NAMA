import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewpage extends StatelessWidget {
  const GridViewpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridViewpage'),
      ),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3, crossAxisSpacing: 10),
      //   children: [
      //     FlutterLogo(),
      //     FlutterLogo(),
      //     FlutterLogo(),
      //     FlutterLogo(),
      //   ],
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 40, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return FlutterLogo();
        },
        itemCount: 4,
      ),
    );
  }
}
