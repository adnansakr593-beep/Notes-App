import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_view.dart';
import 'package:notes_app/widgets/show_model_cheat.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () 
        {
           
          showModalBottomSheet
          (
            context: (context), 
            builder: (context)

            {
              return ShowModelCheat() ;
            },
            
          );
        },
        child: Icon(Icons.add),
      ),
      body: CustomView(),
    );
  }
}
