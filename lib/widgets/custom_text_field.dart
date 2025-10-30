import 'package:flutter/material.dart';
import 'package:notes_app/helper/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField
  (
    {
      super.key, 
      required this.label, 
      this.maxlines = 1
    }
  );
  final String label;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextField
    (
      maxLines: maxlines,
      cursorColor: primarycolor,
      decoration: InputDecoration
      (
        
        labelText: label,
        labelStyle: TextStyle(color: primarycolor),
        border: build_border(),
        enabledBorder: build_border(),
        focusedBorder: build_border(Color:primarycolor)
      ),
    );
  }

  // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
  OutlineInputBorder build_border( {Color}) {
    return OutlineInputBorder
      (
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide
        (
          color: Color ?? Colors.white
        )
      );
  }
}