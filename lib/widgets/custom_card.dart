import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25,bottom: 25,left: 12,),
      margin: EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 24),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Created by Eng Adnan Sakr',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black,
              size: 33,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 5),
            child: Text(
              'Oct 29, 2026',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
