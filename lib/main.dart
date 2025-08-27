import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:last_project/cubits/add_note_cubit.dart';
import 'package:last_project/cubits/notes_cubit.dart';
import 'package:last_project/models/note_model.dart';
import 'package:last_project/simple_bloc_observer.dart';
import 'package:last_project/views/notes_view.dart';
import 'package:last_project/widgets/constants.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
