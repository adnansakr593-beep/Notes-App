import 'package:flutter/material.dart';
import 'package:notes_app/helper/const.dart';

class CustomBuuton extends StatelessWidget {
  const CustomBuuton({super.key, this.ontap});
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap ,
      child: Container
      (
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration
        (
          borderRadius: BorderRadius.circular(12),
          color: primarycolor
        ),
        child: Center
        (
          child: Text
          
          (
            'Add',
            style: TextStyle
            (
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        ),
      ),
    );
  }
}