import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_project/cubits/notes_cubit.dart';
import 'package:last_project/models/note_model.dart';
import 'package:last_project/widgets/custom_appbar.dart';
import 'package:last_project/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
const EditNoteViewBody({super.key,required this.note});
final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
String ? title;
String ? content;
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView( // Added to handle overflow
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children properly
          children: [
             SizedBox(height: 50),
            CustomAppbar(
              title: 'Edit Note', icon: Icons.check,
              onPressed: (){
                widget.note.title=title ?? widget.note.title;
                 widget.note.subTitle=content ?? widget.note.subTitle;
                 widget.note.save();
                 BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                 Navigator.pop(context);
              },
        
              ),
            CustomTextField(
              onChanged: (value){
                title=value;
              },
              hint: widget.note.title,maxLines: 1),
            SizedBox(height: 16),
            CustomTextField(
               onChanged: (value){
               content=value;
             },
              hint: widget.note.subTitle,maxLines: 5,
           
             ),
          ],
        ),
      ),
    ),
  );
}
}