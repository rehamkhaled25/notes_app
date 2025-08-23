import 'package:flutter/material.dart';
import 'package:last_project/widgets/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:
         (context)
         {
          return const EditNoteView()
         ;}
         ));
      },
      child: Padding(
        padding: const EdgeInsets.only(top:16),
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24,left: 16,right: 24),
          decoration: BoxDecoration(
            color: Color(0xffFFCC80),
            borderRadius: BorderRadius.circular(16)
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text("Flutter tips",style: TextStyle(color: Colors.black, fontSize:26 ),),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text("build your career now",style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 20),),
              ),
              trailing: IconButton(onPressed: (){}, 
              icon: Icon(Icons.delete),color: Colors.black.withOpacity(.7)
              ,iconSize:30 ,),
              ),
              Text('August 23rd , 2025',style: TextStyle(
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
