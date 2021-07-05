import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Qiktech.Dev'),
          // centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Text('hey',
          style: GoogleFonts.indieFlower(
            textStyle: TextStyle( color: Colors.amber)
          ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Text('click'),
          backgroundColor: Colors.black,
        ),
      ),
    ));
