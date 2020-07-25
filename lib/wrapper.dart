
import 'package:coffee/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authenticate.dart';
import 'home.dart';



class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user =Provider.of<User>(context);
    print(user);

    //return either home or authentication widget

    if(user==null)
    {
      return Authenticate();
    }
    else{
      return Home();
    }
  }
}
