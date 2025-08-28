import 'dart:ui';

import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_project/cubits/add_notes_states.dart';
import 'package:last_project/models/note_model.dart';
import 'package:last_project/widgets/constants.dart';
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(
    AddNoteInitial()
  );
Color color = Color(0xffAC3931);

  addNote(NoteModel note) async{
    note.color=color!.value;
    emit(AddNoteLoading());
   try {
  var notesBox = Hive.box(kNotesBox);
  await notesBox.add(note);
  emit(AddNoteSuccess());
} 
catch (e) {

  emit(AddNoteFailure(e.toString()));
}
  }
}