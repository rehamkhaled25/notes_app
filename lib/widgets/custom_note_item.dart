import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_project/cubits/notes_cubit.dart';
import 'package:last_project/models/note_model.dart';
import 'package:last_project/widgets/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:
         (context)
         {
          return EditNoteView(
            note: note,
          )
         ;}
         ));
      },
      child: Padding(
        padding: const EdgeInsets.only(top:16),
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24,left: 16,right: 24),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16)
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,style: TextStyle(color: Colors.black, fontSize:26 ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(note.subTitle,style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 20),),
              ),
              trailing: IconButton(onPressed: (){note.delete();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              }, 
              icon: Icon(Icons.delete),color: Colors.black.withOpacity(.7)
              ,iconSize:30 ,),
              ),
              Text(note.date,style: TextStyle(
                  color: Colors.black26.withOpacity(0.7)
                ),
              )
          
          ],
          ),
        ),
      ),
    );
  }
   } 
