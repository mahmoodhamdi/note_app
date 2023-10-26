import 'package:flutter/material.dart';

class AppBarIconWidget extends StatelessWidget {
  const AppBarIconWidget({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.4),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Center(
          child: Icon(
        icon,
        size: 28,
      )),
    );
  }
}
