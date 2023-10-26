import 'package:flutter/material.dart';

class SearchIconWidget extends StatelessWidget {
  const SearchIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.4),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: const Center(
          child: Icon(
        Icons.search_outlined,
        size: 28,
      )),
    );
  }
}
