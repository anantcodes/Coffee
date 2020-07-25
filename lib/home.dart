
import 'package:flutter/material.dart';

import 'auth.dart';

class Home extends StatelessWidget {

  final AuthService _auth=AuthService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
