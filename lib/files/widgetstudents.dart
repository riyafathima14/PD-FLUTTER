import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/students.dart';

class WidgetStudents {
  static Widget buildStudentSection(double screenWidth, BuildContext context) {
    bool isMobile = screenWidth < 600; 

    return Padding(
      padding: EdgeInsets.all(isMobile ? 8.0 : 16.0),
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 4),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: allStudents.length,
        itemBuilder: (context, index) {
          final students = allStudents[index];
          return Padding(
            padding: EdgeInsets.symmetric(vertical: isMobile ? 10 : 15), 
            child: Row(
              children: [
                CircleAvatar(
                  radius: isMobile ? 20 : 30, // Adjust avatar size
                  backgroundColor: Colors.grey.shade200,
                  child: ClipOval(
                    child: Image.asset(students.image, fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 10), 
                Expanded( 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        students.name,
                        style: GoogleFonts.nunito(
                          fontSize: isMobile ? 14 : 16, 
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA),
                        ),
                      ),
                      const SizedBox(height: 4), 
                      Text(
                        students.pos,
                        style: GoogleFonts.nunito(
                          fontSize: isMobile ? 12 : 14, 
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF8b8b8b),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10), 
                Icon(
                  Icons.mark_chat_unread_outlined,
                  color: const Color(0xff414eca),
                  size: isMobile ? 20 : 24, 
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
