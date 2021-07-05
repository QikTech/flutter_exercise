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
            child: Column(
          children: [
            Image.asset('assets/img.jpeg'),
            Text('Qiktech'),
            Image.network('https://cdn.dribbble.com/users/1615584/screenshots/15976393/media/2817662416918f1d0c101fabacce1480.jpg?compress=1&resize=1200x900')
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('click'),
          backgroundColor: Colors.black,
        ));
  }
}
