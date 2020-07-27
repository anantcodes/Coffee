import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'auth.dart';
import 'package:coffee/database.dart';
import 'package:provider/provider.dart';

import 'brew.dart';
import 'brew_list.dart';
class Home extends StatelessWidget {

  final AuthService _auth=AuthService();


  @override
  Widget build(BuildContext context) {

    void _showSettingsPanel()
    {
      showModalBottomSheet(context: context, builder: (context){
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 60.0),
          child: Text('bottom sheet'),
        );
      });
    }



    return StreamProvider<List<Brew>>.value(
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
            ),
            FlatButton.icon(
              icon: Icon(Icons.settings),
              label: Text('settings'),
              onPressed: (){
                _showSettingsPanel();
              },
            )
          ],
        ),
        body: BrewList(),
      ),
    );
  }
}
