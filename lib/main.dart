import 'package:flutter/material.dart';
import 'package:onduty/src/pages/HomePage.dart';

void main() => runApp(OnDuty());

class OnDuty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Team Manager",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: new HomePage(),
      //routes: createRoutes(),      
    );
  }
}
