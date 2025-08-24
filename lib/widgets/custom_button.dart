import 'package:flutter/material.dart';
import 'package:last_project/widgets/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(
  color: kPrimaryColor,
  borderRadius: BorderRadius.circular(8),
),
child: Center(child: Text('save',style: TextStyle(
  color: Colors.black,fontSize: 18,
  fontWeight: FontWeight.bold)
),
),

    );
  }
}