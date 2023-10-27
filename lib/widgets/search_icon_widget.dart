import 'package:flutter/material.dart';

class AppBarIconWidget extends StatelessWidget {
  const AppBarIconWidget({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.4),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Center(
          child: IconButton(
        icon: Icon(
          icon,
          size: 28,
        ),
        onPressed: onPressed,
      )),
    );
  }
}
