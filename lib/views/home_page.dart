import 'package:flutter/material.dart';
import 'package:last_project/widgets/notes_view_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: NotesViewBody(),
    );
  }
}
