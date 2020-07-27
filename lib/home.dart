import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'auth.dart';
import 'package:coffee/database.dart';
import 'package:provider/provider.dart';

import 'brew_list.dart';
class Home extends StatelessWidget {

  final AuthService _auth=AuthService();


  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().brews,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon:  Icon(Icons.person),
              onPressed: ()async{
                await _auth.signOut();
              },
              label: Text('Logout'),
            )
          ],
        ),
        body: BrewList(),
      ),
    );
  }
}
