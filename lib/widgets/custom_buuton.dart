import 'package:flutter/material.dart';
import 'package:notes_app/helper/const.dart';

// ignore: must_be_immutable
class CustomBuuton extends StatelessWidget {
   CustomBuuton({super.key, this.ontap,this.isloading = false});
  final void Function()? ontap;
  bool isloading ;

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
          child: isloading ? CircularProgressIndicator(
            color: Colors.black,
          ) : Text
          
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