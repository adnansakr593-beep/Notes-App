import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/edit_note_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key,  required this.notedata});
  final NoteModel notedata;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return EditNotePage(noteModel: notedata,);
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 15, bottom: 15, left: 12),
        margin: EdgeInsets.symmetric(vertical: 9),
        decoration: BoxDecoration(
          color: Color(notedata.color),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notedata.title,
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 24),
              ),
      
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  notedata.subTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey[900],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () 
                {
                  notedata.delete();
                  BlocProvider.of<NotesCubit>(context).getAllNotes();
                },
                icon: Icon(Icons.delete, color: Colors.black, size: 33),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
              child: Text(
                notedata.date,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
