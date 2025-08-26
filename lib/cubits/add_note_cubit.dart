import 'package:hive_flutter/adapters.dart';
import 'package:last_project/cubits/add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_project/models/note_model.dart';
import 'package:last_project/widgets/constants.dart';
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(
    AddNoteInitial()
  );

  addNote(NoteModel note) async{
    emit(AddNoteLoading());
   try {
  var notesBox = Hive.box(kNotesBox);
  emit(AddNoteSuccess());
  await notesBox.add(note);
} 
catch (e) {
  AddNoteFailure(e.toString());
}
  }
}