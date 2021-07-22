import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_the_net_ninja/theme/colors.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Listing Users'),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    List items = [
      "1",
      "2"
    ];
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => getCard(),
    );
  }
}

Widget getCard(){
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadiusDirectional.circular(60/2)
              ),
            )
          ],
        ),
      ),
    ),
  );
}