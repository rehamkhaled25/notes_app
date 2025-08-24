import 'package:flutter/material.dart';
import 'package:last_project/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint, required this.maxLines,this.onSaved});
final String hint;
final int maxLines;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return 
    TextFormField(
      onSaved: onSaved,
      validator:(value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }
       else{
        return null;
       }
      } ,
        cursorColor: kPrimaryColor,
      decoration:  InputDecoration (
      border:  buildBorder(),
      enabledBorder: buildBorder(),
      hintText: hint,
      hintMaxLines: maxLines,
      hintStyle: TextStyle(color: kPrimaryColor),
      focusedBorder: buildBorder(kPrimaryColor)
      )
      );
  }

  InputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
