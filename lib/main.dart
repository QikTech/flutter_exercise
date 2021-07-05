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
        body: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          color: Colors.purple,
          child: Column(
            children: [
              Text('hello'),
              ElevatedButton(child: Icon(Icons.ac_unit), onPressed: (){})
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('click'),
          backgroundColor: Colors.black,
        ));
  }
}
