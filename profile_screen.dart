import 'package:flutter/material.dart';
import 'ProfileBody.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName='/profile';
  @override
  Widget build(BuildContext context){

    return Scaffold(
       appBar: AppBar(
        title: Text('متجر أبوحريرة'),
        backgroundColor: Colors.amberAccent.withOpacity(0.7)
      ),
      body: ProfileBody(),
    );
  }
}