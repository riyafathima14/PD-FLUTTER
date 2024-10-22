import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Widgettoplearnersprofile {
  static Widget profiles(String name, int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize:
            MainAxisSize.min, 
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 24.5, 
            backgroundImage: AssetImage('assets/images/tp$index.png'),
          ),
          const SizedBox(
            height: 5,
          ),
         
          FittedBox(
            child: Text(
              name,
              textAlign: TextAlign.center, 
              style: GoogleFonts.nunito(
                color: const Color(0xFF414ECA),
                fontSize: 10, 
                fontWeight: FontWeight.w700,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis, 
            ),
          ),
        ],
      ),
    );
  }
}
