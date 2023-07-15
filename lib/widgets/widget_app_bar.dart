import 'package:flutter/material.dart';

class WidgetAppBar extends StatelessWidget {
  const WidgetAppBar({super.key, required this.title, required this.color});
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: color,
    );
  }
}
