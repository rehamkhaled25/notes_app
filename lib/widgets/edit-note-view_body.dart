import 'package:flutter/material.dart';
import 'package:last_project/widgets/custom_appbar.dart';
import 'package:last_project/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView( // Added to handle overflow
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children properly
          children: [
            SizedBox(height: 50),
            CustomAppbar(title: 'Edit Note', icon: Icons.check),
            CustomTextField(hint: 'Title',maxLines: 1),
            SizedBox(height: 16),
            CustomTextField(hint: 'Content',maxLines: 5,),
          ],
        ),
      ),
    ),
  );
}
}