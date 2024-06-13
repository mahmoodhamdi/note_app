import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/home/logic/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/features/home/ui/notes_view.dart';

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
      ),
    );
  }
}
