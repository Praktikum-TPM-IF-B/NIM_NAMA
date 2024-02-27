import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_p2/pages/Secondpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Container(
          // Container
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // Column
          children: [
            Container(
                child: Row(children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Secondpage();
                    }));
                  },
                  child: Text('Click Me')),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    label: Text('Username'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                onChanged: (value) => print('Username: $value'),
              ))
            ])),

            // shortcut crtl + .
            Container(
              height: 12000,
              color: Colors.red,
            ),

            // // listView
            // Expanded(
            //   child: ListView(
            //     children: [
            //       ListTile(
            //         leading: Icon(Icons.account_circle),
            //         title: Text('Nama Akun'),
            //         subtitle: Text('Sub Nama Akun'),
            //       ),
            //     ],
            //   ),
            // )

            // ListViewBuilder
            // Expanded(
            //     child: ListView.builder(
            //   itemCount: 20,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       leading: Icon(Icons.account_circle),
            //       title: Text('Nama Akun $index'),
            //       subtitle: Text('Sub Nama Akun'),
            //     );
            //   },
            // )),

            // ListView.separated
            // Expanded(
            //     child: ListView.separated(
            //   itemCount: 20,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       leading: Icon(Icons.account_circle),
            //       title: Text('Nama Akun $index'),
            //       subtitle: Text('Sub Nama Akun'),
            //     );
            //   },
            //   separatorBuilder: (context, index) {
            //     return Divider(
            //       color: Colors.black,
            //     );
            //   },
            // ))
          ],
        ),
      )),
    );
  }
}
