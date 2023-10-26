import 'package:flutter/material.dart';
import 'package:note_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label, this.maxLines = 1});
  final String label;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor:  kPrimaryColor,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(color:  kPrimaryColor),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(16))),
      ),
    );
  }
}
