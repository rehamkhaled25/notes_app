import 'package:flutter/material.dart';
import 'package:last_project/models/note_model.dart';
import 'package:last_project/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key,required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return EditNoteViewBody(
      note: note,
    );
  }
}