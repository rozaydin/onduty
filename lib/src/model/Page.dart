import 'dart:core';
import 'package:flutter/material.dart';
import '../pages/DashboardPage.dart';
import '../pages/TeamPage.dart';

Page getPage(int index) {
  switch (index) {
    case 0:
      return DASHBOARD_PAGE;
      break;
    case 1:
      return TEAM_PAGE;
      break;
  }
}

// Page declerations
final DASHBOARD_PAGE = Page(0, "Dashboard", new DashboardPage());
final TEAM_PAGE = Page(1, "Team", new TeamPage());

class Page {
  final String name;
  final int index;
  final Widget widget;

  Page(this.index, this.name, this.widget) {}

  @override
  String toString() {
    return "Page: $name, index: $index";
  }
}
