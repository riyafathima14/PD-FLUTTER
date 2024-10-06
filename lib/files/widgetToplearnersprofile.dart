import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Widgettoplearnersprofile {
  static Widget profiles(String name, int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // Ensure the column takes only needed height
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[200],
            radius: 24.5, // Fixed size for mobile
            backgroundImage: AssetImage('assets/images/tp$index.png'),
          ),
          const SizedBox(
            height: 5,
          ),
          // Use FittedBox for responsive text
          FittedBox(
            child: Text(
              name,
              textAlign: TextAlign.center, // Center the text
              style: GoogleFonts.nunito(
                color: const Color(0xFF414ECA),
                fontSize: 10, // Base font size
                fontWeight: FontWeight.w700,
              ),
              maxLines: 1, // Limit to one line
              overflow: TextOverflow.ellipsis, // Truncate text if necessary
            ),
          ),
        ],
      ),
    );
  }
}
