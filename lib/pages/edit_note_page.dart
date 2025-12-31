import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

// ignore: must_be_immutable
class EditNotePage extends StatefulWidget {
   EditNotePage({super.key,required this.noteModel});

  NoteModel noteModel;

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {

   String? title;
   String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              CustomAppBar(
                label: 'Edit Notes',
                icon: IconButton(
                  onPressed: () {
                    widget.noteModel.title = title ?? widget.noteModel.title;
                    widget.noteModel.subTitle = subtitle ?? widget.noteModel.subTitle;
                    BlocProvider.of<NotesCubit>(context).getAllNotes();
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.check),
                ),
              ),

              const SizedBox(height: 55),

               CustomTextField
               (
                label: widget.noteModel.title,
                onchanged: (value)
                {
                  title = value;
                },
              ),

              const SizedBox(height: 25),

              CustomTextField
              (
                label: widget.noteModel.subTitle, 
                maxlines: 5,
                onchanged: (value) {
                  subtitle = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
