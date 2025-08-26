import 'package:flutter/material.dart';
import 'package:last_project/widgets/custom_button.dart';
import 'package:last_project/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

  final GlobalKey<FormState> formKey=GlobalKey();

  String ?title , subTitle;

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          )
          ,CustomTextField( onSaved:(value){
            title=value;
          } ,
            hint: 'title',maxLines: 1,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 
          'content', onSaved: (value){
            subTitle=value;
          },
          maxLines: 5,),
          const SizedBox(height: 16),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          )
        ],
      ),
    );
  }
}