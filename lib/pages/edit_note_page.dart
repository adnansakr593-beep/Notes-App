import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

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
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.check),
                ),
              ),

              const SizedBox(height: 55),

              const CustomTextField(label: 'Title'),

              const SizedBox(height: 25),

              const CustomTextField(label: 'Content', maxlines: 5),
            ],
          ),
        ),
      ),
    );
  }
}
