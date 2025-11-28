import 'package:flutter/material.dart';
import 'package:notes_app/helper/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField
  (
    {
      super.key, 
      required this.label, 
      this.maxlines = 1, 
      this.onSaved, 
      
    }
  );
  final String label;
  final int maxlines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  16.0),
      child: TextFormField
      (
        validator: (value)
        {
          if (value?.isEmpty ?? true)
          {
            return 'This Field is required';
          }
          else
          {
            return null;
          }
        } ,
        onSaved:  onSaved,
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
      ),
    );
  }

  // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
  OutlineInputBorder build_border({Color}) {
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