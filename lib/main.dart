import 'package:flutter/material.dart';
import 'package:notes_app/helper/const.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async
{
  await Hive.initFlutter();
  await Hive.openBox(hivebox) ;
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: const HomePage(),
    );
  }
}