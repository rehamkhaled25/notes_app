import 'package:flutter/material.dart';
import 'package:last_project/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key,required this.title,required this.icon,this.onPressed });
final String title;
final IconData icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:   [
        Text(title,style: TextStyle(
          color: Colors.white,fontSize: 28
        ),
        ),
        Spacer(),
        CustomIcon(
          onPressed: onPressed,
          icon: icon)

      ]
    );
  }
  }