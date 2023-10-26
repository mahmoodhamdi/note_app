import 'package:flutter/material.dart';
import 'package:note_app/widgets/search_icon_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        Spacer(),
        SearchIconWidget()
      ],
    );
  }
}
