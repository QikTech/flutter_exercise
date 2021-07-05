import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Qiktech.Dev'),
          // centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(onPressed: (){},child: Icon(Icons.ac_unit),),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
              label: const Text('Button'),
            ),
          ],)
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('click'),
          backgroundColor: Colors.black,
        ));
  }
}
