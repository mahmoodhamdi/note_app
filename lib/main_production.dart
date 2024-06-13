import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/core/constants/constants.dart';
import 'package:note_app/features/home/data/models/note_model.dart';
import 'package:note_app/note_app.dart';
import 'package:note_app/simple_bloc_observer.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NoteApp());
}
