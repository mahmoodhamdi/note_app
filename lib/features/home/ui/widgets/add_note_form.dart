import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/home/data/models/note_model.dart';
import 'package:note_app/features/home/logic/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/features/home/ui/widgets/colors_list_view.dart';
import 'package:note_app/features/home/ui/widgets/custom_button.dart';
import 'package:note_app/features/home/ui/widgets/custom_text_form_field.dart';


class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> key = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (p0) {
              title = p0;
            },
            hint: "title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (p0) {
              subTitle = p0;
            },
            hint: "content",
            maxLines: 6,
          ),
          const SizedBox(
            height: 16,
          ),
          const ColorsListView(
            isActive: false,
          ),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (key.currentState!.validate()) {
                    key.currentState!.save();
                    var currentDate = DateTime.now();

                    NoteModel noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date:
                            "  ${" ${currentDate.day}-${currentDate.month}-${currentDate.year} ${currentDate.hour}:"}${"${currentDate.minute}"}  ",
                        color: Colors.cyanAccent.value);
                    BlocProvider.of<AddNoteCubit>(context).addNotes(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                title: "Add",
              );
            },
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
