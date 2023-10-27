import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isActive});
  final Color color;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 34.3,
            child: CircleAvatar(backgroundColor: color, radius: 32))
        : CircleAvatar(backgroundColor: color, radius: 32);
  }
}
