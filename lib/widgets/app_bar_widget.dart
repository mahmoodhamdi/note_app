import 'package:flutter/material.dart';
import 'package:note_app/widgets/search_icon_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        const Spacer(),
        AppBarIconWidget(
          icon: icon,
        ),
      ],
    );
  }
}
