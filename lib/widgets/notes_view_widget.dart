import 'package:flutter/material.dart';
import 'package:note_app/widgets/app_bar_widget.dart';
import 'package:note_app/widgets/note_item.dart';

class NotesViewWidget extends StatelessWidget {
  const NotesViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          AppBarWidget(),
       NotesItem()   
        ],
      ),
    );
  }
}