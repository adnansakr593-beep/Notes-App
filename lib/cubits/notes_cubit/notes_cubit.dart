import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/helper/const.dart';
import 'package:notes_app/models/note_model.dart';
import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  getAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(hivebox);
      emit(NotesSucss(noteBox.values.toList()));
    } on Exception catch (e) {
      emit(NotesFaluier(e.toString()));
    }
  }
}
