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
          child: Icon(
            Icons.ac_unit,
            color: Colors.amber,
            size: 50,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('click'),
          backgroundColor: Colors.black,
        ));
  }
}
