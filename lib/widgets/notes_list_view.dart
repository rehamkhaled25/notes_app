import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_project/cubits/notes_cubit.dart';
import 'package:last_project/cubits/notes_state.dart';
import 'package:last_project/models/note_model.dart';
import 'package:last_project/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes??[];
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return NoteItem(
              note: notes[index],
            );
          },
        );
      },
    );
  }
}