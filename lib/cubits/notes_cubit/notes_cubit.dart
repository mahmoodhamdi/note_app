import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

bool isLoading = false;

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      isLoading = false;
      emit(NotesSucces(notes: notes));
    } catch (e) {
      isLoading = false;
      emit(NotesFailure(errMessage: e.toString()));
    }
  }
}
