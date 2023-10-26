import 'package:flutter/material.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,

    );
  }
}
