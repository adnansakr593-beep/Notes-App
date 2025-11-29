import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_state.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/helper/const.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note , NotesCubit notesCubit) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(hivebox);

      await noteBox.add(note);

      emit(AddNoteSucss());
      notesCubit.getAllNotes();
    } on Exception catch (e) {
      emit(AddNoteFaluier(e.toString())) ;
    }
  }

}
