import 'package:flutter/material.dart';

class CostomSearchIcon extends StatelessWidget {
  const CostomSearchIcon({super.key, required this.icon});
  final IconButton icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: Colors.white.withOpacity(0.04),
        borderRadius: BorderRadius.circular(16),
      ),

      child: icon,
    );
  }
}
