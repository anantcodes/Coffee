import 'package:flutter/material.dart';

import 'shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {


  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];

  // form values
  String _currentName;
  String _currentSugars;
  int _currentStrength;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
