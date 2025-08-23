import 'package:flutter/material.dart';
import 'package:last_project/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  const [
        Text("Notes",style: TextStyle(
          color: Colors.white,fontSize: 28
        ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
