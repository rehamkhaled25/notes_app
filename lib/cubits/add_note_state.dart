import 'package:last_project/models/note_model.dart';

class NotesState {}
class NotesInitial extends NotesState{}
class NotesLoading extends NotesState{}
class NotesSuccess extends NotesState{
final List<NoteModel> notes;

  NotesSuccess(this.notes);
}
class NotesFailure extends NotesState{
  final String errMessage;
  NotesFailure(this.errMessage);
}