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
        body: Row(
          children: [
            Expanded(
              child: Image.asset('assets/img.jpeg'),
              flex: 2,
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.cyan,
                child: Text('1'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.pinkAccent,
                child: Text('12'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.amber,
                child: Text('13'),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('click'),
          backgroundColor: Colors.black,
        ));
  }
}
