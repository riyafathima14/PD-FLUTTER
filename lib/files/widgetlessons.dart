import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/course_tour_screen.dart';

class WidgetLessons {
  static Widget buildLessonsSection(double screenWidth, BuildContext context) {
    bool isMobile = screenWidth < 600;

    double horizontalPadding = screenWidth / 17;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Tools",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: isMobile ? 14 : 16,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF414ECA),
                ),
              ),
              const Spacer(),
              Text(
                "See All",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: isMobile ? 10 : 12,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF414ECA),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Section 1
          _buildSectionTitle(isMobile, "Section 1 - Introduction", "180 mins"),
          const SizedBox(height: 10),
          _buildLessonCard(context, screenWidth, "01",
              "Deep Dive into UI Research", "10 min"),
          const SizedBox(height: 8),
          _buildLessonCard(
              context, screenWidth, "02", "IA for Complex Systems", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          // Section 2
          _buildSectionTitle(isMobile, "Section 2 - Tools", "180 mins"),
          const SizedBox(height: 8),
          _buildLessonCard(context, screenWidth, "03",
              "UI Design Systems and Scalability", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(
              context, screenWidth, "04", "Advanced Prototyping", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(
              context, screenWidth, "05", "Persuasion and Influence", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(context, screenWidth, "06",
              "Designing for Emerging Tech", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          // Section 3
          _buildSectionTitle(
              isMobile, "Section 3 - Let,s-practice", "180 mins"),
          const SizedBox(height: 8),
          _buildLessonCard(context, screenWidth, "07",
              "UI Design Systems and Scalability", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(context, screenWidth, "08",
              "Design for Business Impact", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(context, screenWidth, "09",
              "The Future of UI/UX Design", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          // Section 4
          _buildSectionTitle(
              isMobile, "Section 3 - Let’s Practice Advanced", "180 mins"),
          const SizedBox(height: 8),
          _buildLessonCard(context, screenWidth, "10",
              "Design for Global Audiences", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(context, screenWidth, "11",
              "Dark UX and Ethical Design", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(context, screenWidth, "12",
              "Dark UX and Ethical Design", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          // Section 5
          _buildSectionTitle(isMobile, "Section 4 -Project", "180 mins"),
          const SizedBox(height: 8),
          _buildLessonCard(
              context, screenWidth, "13", "Professional Development", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(
              context, screenWidth, "14", "Portfolio Building", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
        ],
      ),
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

  static Widget _buildLessonCard(BuildContext context, double screenWidth,
      String lessonNumber, String title, String duration,
      {bool isLocked = false}) {
    return GestureDetector(
      onTap: () {
        if (!isLocked) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const CourseTourScreen(),
            ),
          );
        }
      },
      child: Container(
        height: 83, // Fixed height
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
                      overflow: TextOverflow.ellipsis, // Prevent overflow
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
              isLocked
                  ? const Icon(Icons.lock, color: Color(0xFF8b8b8b))
                  : const Icon(Icons.play_circle_fill_rounded,
                      color: Color(0xFF414ECA)),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildAdvancedLessonsSection(
      double screenWidth, BuildContext context) {
    bool isMobile = screenWidth < 600;

    double horizontalPadding = screenWidth / 17;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Tools",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: isMobile ? 14 : 16,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF414ECA),
                ),
              ),
              const Spacer(),
              Text(
                "See All",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: isMobile ? 10 : 12,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF414ECA),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          _buildSectionTitle(isMobile, "Section 1 - Introduction", "180 mins"),
          const SizedBox(height: 10),
          _buildLessonCard(context, screenWidth, "01",
              "Deep Dive into UI Research", "10 min"),

          const SizedBox(height: 8),
          _buildLessonCard(
              context, screenWidth, "02", "IA for Complex Systems", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          // Section 2
          _buildSectionTitle(isMobile, "Section 2 - Tools", "180 mins"),
          const SizedBox(height: 8),
          _buildLessonCard(context, screenWidth, "03",
              "UI Design Systems and Scalability", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(
              context, screenWidth, "04", "Advanced Prototyping", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(
              context, screenWidth, "05", "Persuasion and Influence", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
          _buildLessonCard(context, screenWidth, "06",
              "Designing for Emerging Tech", "30 min",
              isLocked: true),
          const SizedBox(height: 8),

          _buildLessonCard(context, screenWidth, "07",
              "Designing for Emerging Tech", "30 min",
              isLocked: true),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
