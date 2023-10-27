import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/widgets/app_bar_widget.dart';
import 'package:note_app/widgets/colors_list_view.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            AppBarWidget(
              onPressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.subTitle =
                    content ?? widget.noteModel.subTitle;
                widget.noteModel.save();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotesView(),
                    ));
              },
              icon: Icons.check,
              title: "Edit Notes",
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: widget.noteModel.title,
              onChanged: (p0) {
                title = p0;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (p0) {
                content = p0;
              },
              hint: widget.noteModel.subTitle,
              maxLines: 6,
            ),
            const ColorsListView(
              isActive: false,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              title: "Edit",
              onTap: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.subTitle =
                    content ?? widget.noteModel.subTitle;
                widget.noteModel.save();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotesView(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
