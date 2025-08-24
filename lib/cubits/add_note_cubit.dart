import 'package:last_project/cubits/add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_project/models/note_model.dart';
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(
    AddNoteInitial()
  );
  addNote(NoteModel note){
    
  }
}