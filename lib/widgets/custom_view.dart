import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar..dart';

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
            CustomAppBar()
          ],
        ),
      ),
    );
  }
}