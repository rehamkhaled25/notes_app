import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:last_project/cubits/notes_state.dart';
import 'package:last_project/models/note_model.dart';
import 'package:last_project/widgets/constants.dart';


class NotesCubit extends Cubit<NotesState>{
  NotesCubit() : super(NotesInitial());
  List<NoteModel> ? notes;
  fetchAllNotes() async {
  var notesBox = Hive.box<NoteModel>(kNotesBox);

 notes= notesBox.values.toList();
 emit(NotesSuccess());

}

  }
  