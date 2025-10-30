import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar..dart';
//import 'package:notes_app/widgets/custom_card.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class CustomView extends StatelessWidget {
  const CustomView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: const Column
        (
          children: 
          [
            CustomAppBar
            (
              label: 'Notes',
              icon: IconButton
              (
                onPressed: null, 
                icon: Icon(Icons.search),
                color: Colors.white ,
                
              ),
            ),
            SizedBox(height: 15,),
            Expanded(child: NotesListView())
          ],
        ),
      ),
    );
  }
}
