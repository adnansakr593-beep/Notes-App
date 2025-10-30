import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_buuton.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class ShowModelCheat extends StatelessWidget {
  const ShowModelCheat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
            SizedBox(height: 35),

           CustomTextField(label: 'Title'),

           SizedBox(height: 25),

           CustomTextField(label: 'Content', maxlines: 5),

           SizedBox(height: 155,),

           CustomBuuton()
        ],
      ),
    );
  }
}
