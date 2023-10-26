import 'package:flutter/material.dart';
import 'package:note_app/widgets/app_bar_widget.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            AppBarWidget(
              icon: Icons.check,
              title: "Edit Notes",
            ),  SizedBox(
              height: 32,
            ),
            CustomTextField(label: "title"),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              label: "content",
              maxLines: 6,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(title: "Edit"),
          ],
        ),
      ),
    );
  }
}
