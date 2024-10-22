import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/course_tour_screen.dart';

class Widget3dlessons {
  static Widget build3dlessons(double screenWidth, BuildContext context) {
    bool isMobile = screenWidth < 600;

    double horizontalPadding = screenWidth / 17;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),

        _buildSectionTitle(isMobile, "Section 1 - Introduction", "180 mins"),
        const SizedBox(height: 10),
        _buildLessonCard(
          context,
          screenWidth,
          "01",
          "Deep Dive into UI Research",
          "10 min",
        ),
        const SizedBox(height: 8),
        _buildLessonCard(
          context,
          screenWidth,
          "02",
          "IA for Complex Systems",
          "30 min",
        ),
        const SizedBox(height: 8),
        // Section 2
        _buildSectionTitle(isMobile, "Section 2 - Tools", "180 mins"),
        const SizedBox(height: 8),
        _buildLessonCard(
          context,
          screenWidth,
          "03",
          "UI Design Systems and Scalability",
          "30 min",
        ),
        const SizedBox(height: 8),
        _buildLessonCard(
          context,
          screenWidth,
          "04",
          "Advanced Prototyping",
          "30 min",
        ),
        const SizedBox(height: 8),
        _buildLessonCard(
          context,
          screenWidth,
          "05",
          "Persuasion and Influence",
          "30 min",
        ),
        const SizedBox(height: 8),
        _buildLessonCard(
          context,
          screenWidth,
          "06",
          "Designing for Emerging Tech",
          "30 min",
        ),
        const SizedBox(height: 8),

        _buildLessonCard(
          context,
          screenWidth,
          "07",
          "Designing for Emerging Tech",
          "30 min",
        ),
        const SizedBox(height: 8),
        _buildLessonCard(
          context,
          screenWidth,
          "08",
          "Designing for Emerging Tech",
          "30 min",
        ),
        const SizedBox(height: 8),
        _buildLessonCard(
          context,
          screenWidth,
          "09",
          "Designing for Emerging Tech",
          "30 min",
        ),
        const SizedBox(height: 8),

        const SizedBox(height: 8),
        _buildLessonCard(
          context,
          screenWidth,
          "10",
          "Designing for Emerging Tech",
          "30 min",
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  static Widget _buildSectionTitle(
      bool isMobile, String sectionTitle, String duration) {
    return Row(
      children: [
        Text(
          sectionTitle,
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            fontSize: isMobile ? 12 : 14,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF8B8B8B),
          ),
        ),
        const Spacer(),
        Text(
          duration,
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            fontSize: isMobile ? 10 : 12,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF414ECA),
          ),
        ),
      ],
    );
  }

  static Widget _buildLessonCard(
    BuildContext context,
    double screenWidth,
    String lessonNumber,
    String title,
    String duration,
  ) {
    return GestureDetector(
      onTap: () {
        if (title == "Deep Dive into UI Research") {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const CourseTourScreen(),
            ),
          );
        }
      },
      child: Container(
        height: 83,
        width: screenWidth,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color.fromARGB(255, 220, 216, 216),
          ),
          borderRadius: BorderRadius.circular(19),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 30),
          child: Row(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 220, 216, 216),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  lessonNumber,
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF000000),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      duration,
                      style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF8B8B8B),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              const Icon(Icons.play_circle_fill_rounded,
                  color: Color(0xFF414ECA)),
            ],
          ),
        ),
      ),
    );
  }
}
