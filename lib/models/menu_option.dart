import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  // MenuOption(this.route, this.icon, this.name, this.screen);
  MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
