import 'package:flutter/material.dart';
import 'package:last_project/widgets/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key , this.onTap,required this.isLoading});
final void Function()? onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child:isLoading? CircularProgressIndicator(
          color: Colors.black,
        )
        : Text('save',style:
         TextStyle(
        color: Colors.black,fontSize: 18,
        fontWeight: FontWeight.bold)
      ),
      ),
      
      ),
    );
  }
}