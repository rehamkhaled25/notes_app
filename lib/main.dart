import 'package:flutter/material.dart';
import 'package:last_project/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'Poppins'
      
      ),
      home: const NotesView(),
      debugShowCheckedModeBanner: false,
    );
    }
    }