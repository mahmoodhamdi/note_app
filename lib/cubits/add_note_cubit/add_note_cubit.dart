import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  bool isLoading = false;
  Color color = const Color(0xFF87CEEB);
  addNotes(NoteModel noteModel) async {
    noteModel.color = color.value;
    isLoading = true;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(noteModel);
      isLoading = false;
      emit(AddNoteSusses());
    } catch (e) {
      isLoading = false;
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
