// ignore: file_names
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.label, required this.icon,  });
  final String label;
  final IconButton icon;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text( label, style: TextStyle(fontSize: 26)),
        CostomSearchIcon
        (
          icon: icon,
        ),
      ],
    );
  }
}
