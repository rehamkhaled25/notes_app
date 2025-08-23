import 'package:flutter/material.dart';
import 'package:last_project/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint, this.maxLines=1});
final String hint;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
