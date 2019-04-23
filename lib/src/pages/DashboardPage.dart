import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      createRow([Text("Sprint:"), Text("45")]),
      createRow([Text("Sprint Goal:"), Text("Deploy RabbitMQ to Integ")]),
      createPersonnelList(["Ridvan Ozaydin", "Batuhan Eke"]),
    ], mainAxisAlignment: MainAxisAlignment.spaceEvenly));
  }
}

Widget createRow(List<Widget> elements) {
  return Row(
      children: elements, mainAxisAlignment: MainAxisAlignment.spaceEvenly);
}

Widget createPersonnelList(List<String> people) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: people.map(createOnDutyPersonnel).toList());
}

Widget createOnDutyPersonnel(String personnel) {
  return Container(
      height: 60,
      color: Colors.yellow,
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Container(
            child: Icon(Icons.person, size: 36, color: Colors.blue),
            color: Colors.white54,
            width: 50,
            height: 50),
        Text(
          personnel,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        )
      ]));
}
