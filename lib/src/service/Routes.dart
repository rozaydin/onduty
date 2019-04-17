import 'dart:collection';

import 'package:flutter/material.dart';
import '../pages/HomePage.dart';
import '../pages/TeamPage.dart';

Map<String, Function> createRoutes() {
  Map<String, WidgetBuilder> routes = new HashMap<String, WidgetBuilder>();
  // routes.addEntries({new MapEntry("/", (BuildContext context) => new HomePage()), });

  // routes["/"] = (BuildContext context) => new HomePage();
  // routes["/team"] = (BuildContext context) => new TeamPage();

  return routes;
}
