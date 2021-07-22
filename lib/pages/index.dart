import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_the_net_ninja/theme/colors.dart';
import 'package:http/http.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // #3
  List usersFromJson = [];
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUser();
  }


  void fetchUser() async {
    // Get API Response
    // #1
    var response = await get(Uri.parse('https://randomuser.me/api/?results=10'));
    print(response.body);
    if(response.statusCode == 200){
      // #2
      var jsonData =  json.decode(response.body)['results'];
      print(jsonData);
      setState(() {
        usersFromJson = jsonData;
      });
    }else {
      setState(() {
        usersFromJson = [];
      });
    }
    // print(jsonData[]);
  }


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
      itemCount: usersFromJson.length,
      itemBuilder: (context, index) => getCard(usersFromJson[index]),
    );
  }
}

Widget getCard(usersFromJson){
  var fullName = usersFromJson['name']['title'].toString()+' '+usersFromJson['name']['last'].toString();
  var email = usersFromJson['email'].toString();
  var profilePic = usersFromJson['picture']['large'].toString();
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
                borderRadius: BorderRadiusDirectional.circular(60/2),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    // image: NetworkImage('https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'))
                    image: NetworkImage(profilePic),),
              ),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(fullName, style: TextStyle(fontSize: 17),),
                SizedBox(width: 20,),
                Text(email, style: TextStyle(fontSize: 17,
                color: Colors.grey),),
              ],
            )
          ],
        ),
      ),
    ),
  );
}