import 'package:notes_app/models/note_model.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesLoading extends NotesState {}
class NotesSucss extends NotesState 
{
  final List<NoteModel> notes;
  NotesSucss(this.notes);
}
class NotesFaluier extends NotesState 
{
  String errmessage;
  NotesFaluier(this.errmessage);
}