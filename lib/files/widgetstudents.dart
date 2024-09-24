import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/students.dart';

class WidgetStudents {
  static Widget buildStudentSection(double screenwidth, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.1),
      child: Column(
        children: [
          ListView.builder(
              padding: const EdgeInsets.only(bottom: 4),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: allStudents.length,
              itemBuilder: (context, index) {
                final students = allStudents[index];
                return Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(child: Image.asset(students.image)),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              students.name,
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF414ECA)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              students.pos,
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF8b8b8b)),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.mark_chat_unread_outlined,
                          color: Color(0xff414eca),
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                );
              }),
        ],
      ),
    );
  }
}
