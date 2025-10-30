import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class ShowModelCheat extends StatelessWidget {
  const ShowModelCheat({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [

          SizedBox(height: 35,),

          CustomTextField(),
        ],
      ),
    );
  }
}