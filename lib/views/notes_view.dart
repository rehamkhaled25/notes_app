import 'package:flutter/material.dart';
import 'package:last_project/widgets/add_note_bottom.dart';
import 'package:last_project/widgets/constants.dart';
import 'package:last_project/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor: kPrimaryColor,
      

        onPressed: (){
        
         showModalBottomSheet(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16)
          ),
          context: context,
          builder: (context){
          return AddNoteButtomSheet()
         ; }
          );
        },
        child: Icon(Icons.add),
        ) ,
     body: NotesViewBody(),
    );
  }
}

