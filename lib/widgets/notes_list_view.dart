import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        
        List<NoteModel> notesList = BlocProvider.of<NotesCubit>(context).noteList?? [];
        return ListView.builder(

          itemCount: notesList.length,
          itemBuilder: (context, index) {
            return CustomCard(notedata: notesList[index],);
          },
        );
      },
    );
  }
}
