import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_buuton.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class ShowModelCheat extends StatefulWidget {
  const ShowModelCheat({super.key});

  @override
  State<ShowModelCheat> createState() => _ShowModelCheatState();
}

class _ShowModelCheatState extends State<ShowModelCheat> {
  final GlobalKey <FormState> formk = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  String? title,subTitle;
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formk,
      autovalidateMode: autovalidateMode ,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children:  
          [
            const SizedBox(height: 35),
      
            CustomTextField
            (
              label: 'Title',
              onSaved: (value) {
                title = value;
              },
            ),
      
            const SizedBox(height: 25),
      
            CustomTextField
            (
              label: 'Content', 
              maxlines: 5,
              onSaved: (value) {
                subTitle = value;
                
              },
            ),
      
            const SizedBox(height: 155,),
      
            CustomBuuton
            (
              ontap: () 
              {
               if (formk.currentState!.validate())
               {
                formk.currentState!.save();
                Navigator.pop(context);
               }
               else
               {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
               }
              },
            )
          ],
        ),
      ),
    );
  }
}

