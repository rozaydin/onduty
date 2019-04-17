import 'package:flutter/material.dart';
import '../model/Page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  // state information
  Page currentPage = DASHBOARD_PAGE;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: _createBody(context),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), title: Text("Dashboard")),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text("Team")),
        ],
        currentIndex: currentPage.index,
        onTap: (int index) {
          setState(() {
            currentPage = getPage(index);
          });
        },
      ),
    );
  }

  Widget _createBody(BuildContext context) {
    return currentPage.widget;
  }
}
