part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSucces extends NotesState {
  final List<NoteModel> notes;

  NotesSucces({required this.notes});
}

final class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure({required this.errMessage});
}
