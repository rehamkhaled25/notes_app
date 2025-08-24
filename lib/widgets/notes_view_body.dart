import 'package:flutter/material.dart';
import 'package:last_project/widgets/custom_appbar.dart';
import 'package:last_project/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24),
      child: Column(
        children: [
         SizedBox(
          height: 50,
         )
         ,CustomAppbar(icon: Icons.search,title: 'Notes'),

        Expanded(child: NotesListView()),
  ],
      ),
    );
  }
} 



