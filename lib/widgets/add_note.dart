import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_buuton.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNotesheat extends StatefulWidget {
  const AddNotesheat({super.key});

  @override
  State<AddNotesheat> createState() => _AddNotesheatState();
}

class _AddNotesheatState extends State<AddNotesheat> {
  String? title, subTitle;
  final GlobalKey<FormState> formk = GlobalKey();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formk,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 35),

          CustomTextField(
            label: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),

          const SizedBox(height: 25),

          CustomTextField(
            label: 'Content',
            maxlines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),

          const SizedBox(height: 155),

          CustomBuuton(
            ontap: () {
              if (formk.currentState!.validate()) {
                formk.currentState!.save();
                var noteModel = 
                NoteModel
                (
                  title: title!, 
                  subTitle: subTitle!, 
                  date: DateTime.now().toString(), 
                  color: Colors.amber.value
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
