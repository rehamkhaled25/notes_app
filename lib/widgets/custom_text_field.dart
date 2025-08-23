import 'package:flutter/material.dart';
import 'package:last_project/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
    decoration:  InputDecoration (
    border:  buildBorder(),
    enabledBorder: buildBorder(),
    hintText: 'hello',
    hintStyle: TextStyle(color: kPrimaryColor),
    focusedBorder: buildBorder(kPrimaryColor)
)
    );
  }

 buildBorder([color]) {
    return InputDecoration(
border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: BorderSide(color:color ?? Colors.white)
)

);
  }
}