import 'package:flutter/material.dart';
import 'package:last_project/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
final data = const [
  
];
  @override
  Widget build(BuildContext context) {
    return 
    ListView.builder(
      itemBuilder:(context,index){
return const NoteItem();
      } );
  }
}