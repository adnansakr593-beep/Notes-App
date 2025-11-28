import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/bloc_observer/simple_bloc_observer.dart';
import 'package:notes_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/helper/const.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async
{
  
  Bloc.observer = MyBlocObserver();
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
    return MultiBlocProvider(
      providers: 
      [
        BlocProvider(create: (context)=> AddNoteCubit() ),
        
      ],
      child: MaterialApp
      (
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark
        ),
        home: const HomePage(),
      ),
    );
  }
}