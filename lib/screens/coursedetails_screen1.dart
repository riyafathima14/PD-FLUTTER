import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/course.dart';
import 'package:pd/files/widgetreviews.dart';
import 'package:pd/screens/enroll_screen10.dart';
import 'package:pd/screens/home_page.dart';
import 'package:pd/files/widgetlessons.dart';
import '../files/widgetabout.dart';

class CoursedetailsScreen1 extends StatefulWidget {
  const CoursedetailsScreen1({super.key});

  @override
  State<CoursedetailsScreen1> createState() => _CoursedetailsScreen1State();
}

class _CoursedetailsScreen1State extends State<CoursedetailsScreen1> {
  int? selectedSection = 0;
  Course course = Course(
    title: "UIUX Designing - Advanced",
    category: "Designs",
    imageUrl: "assets/images/c1.png",
    rate: 5999,
    orgRate: 10999,
    rating: 4.5,
    enrolledAspirants: 1356,
  );

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;

    // Determine if it's mobile or desktop based on screen width
    bool isMobile = screenWidth < 600;

    // Responsive padding and font sizes
    double horizontalPadding = screenWidth / 17;
    double titleFontSize = isMobile ? 20 : 28;
    double subTitleFontSize = isMobile ? 14 : 18;
    double sectionFontSize = isMobile ? 13 : 16;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Responsive Image Section
            Stack(
              children: [
                SizedBox(
                  height: isMobile ? 300 : 400,
                  width: screenWidth,
                  child:
                      Image.asset('assets/images/Icon1.png', fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10),
                  child: CircleAvatar(
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ],
            ),

            // Course Title and Category Section
            Padding(
              padding: EdgeInsets.only(left: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Text(
                    course.title,
                    style: GoogleFonts.nunito(
                      color: const Color(0xFF414ECA),
                      fontSize: titleFontSize, // Responsive font size
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 238, 234, 234),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        height: 18,
                        width: 75,
                        child: Text(
                          course.category,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontSize: subTitleFontSize,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF414ECA),
                          ),
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.star_half,
                        color: Color(0xffE6C100),
                        size: 12,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        '${course.rating}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                      const SizedBox(width: 7),
                      Text(
                        "${course.enrolledAspirants}",
                        style: GoogleFonts.nunito(
                          color: const Color(0xFF8B8B8B),
                          fontSize: subTitleFontSize,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        " Aspirants",
                        style: GoogleFonts.nunito(
                          color: const Color(0xFF8B8B8B),
                          fontSize: subTitleFontSize,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "${course.rate}",
                        style: GoogleFonts.nunito(
                          color: const Color(0xFF414ECA),
                          fontSize: isMobile ? 22 : 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "${course.orgRate}",
                        style: GoogleFonts.nunito(
                          fontSize: subTitleFontSize,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF8B8B8B),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: 10),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double screenWidth = constraints.maxWidth;
                  double itemSpacing =
                      screenWidth > 800 ? 0 : 10; // Adjust if needed

                  return Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, // Ensures even spacing
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Align vertically centered
                    children: [
                      // Left-aligned "Aspirants"
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/images/Icon3.png'),
                          const SizedBox(width: 5),
                          Text(
                            "${course.enrolledAspirants}",
                            style: GoogleFonts.nunito(
                              color: const Color(0xFF8B8B8B),
                              fontSize: subTitleFontSize,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            " Aspirants",
                            style: GoogleFonts.nunito(
                              color: const Color(0xFF8B8B8B),
                              fontSize: subTitleFontSize,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),

                      // Center-aligned "90 Hours"
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.av_timer, color: Color(0xFF414ECA)),
                          const SizedBox(width: 5),
                          Text(
                            "90 Hours",
                            style: GoogleFonts.nunito(
                              color: const Color(0xFF8B8B8B),
                              fontSize: subTitleFontSize,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),

                      // Right-aligned "Certified"
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.workspace_premium,
                              color: Color(0xFF414ECA)),
                          const SizedBox(width: 5),
                          Text(
                            "Certified",
                            style: GoogleFonts.nunito(
                              color: const Color(0xFF8B8B8B),
                              fontSize: subTitleFontSize,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),

            // Responsive Info Row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double screenWidth = constraints.maxWidth;

                  // Each button takes up 1/3 of the screen width
                  double sectionWidth = screenWidth / 3;

                  return Column(
                    children: [
                      // Section Tabs
                      Row(
                        children: [
                          SizedBox(
                            width:
                                sectionWidth, // Takes up 1/3 of the screen width
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  selectedSection = 0;
                                });
                              },
                              child: Text(
                                "About",
                                style: GoogleFonts.nunito(
                                  fontSize: sectionFontSize,
                                  fontWeight: FontWeight.w700,
                                  color: selectedSection == 0
                                      ? const Color(0xFF414ECA)
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                sectionWidth, // Takes up 1/3 of the screen width
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  selectedSection = 1;
                                });
                              },
                              child: Text(
                                "Lessons",
                                style: GoogleFonts.nunito(
                                  fontSize: sectionFontSize,
                                  fontWeight: FontWeight.w700,
                                  color: selectedSection == 1
                                      ? const Color(0xFF414ECA)
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width:
                                sectionWidth, // Takes up 1/3 of the screen width
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  selectedSection = 2;
                                });
                              },
                              child: Text(
                                "Reviews",
                                style: GoogleFonts.nunito(
                                  fontSize: sectionFontSize,
                                  fontWeight: FontWeight.w700,
                                  color: selectedSection == 2
                                      ? const Color(0xFF414ECA)
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // Section Indicators
                      Row(
                        children: [
                          Container(
                            height: selectedSection == 0 ? 3 : 2,
                            width:
                                sectionWidth, // Takes up 1/3 of the screen width
                            color: selectedSection == 0
                                ? const Color(0xFF414ECA)
                                : const Color(0xFF8B8B8B),
                          ),
                          Container(
                            height: selectedSection == 1 ? 3 : 2,
                            width:
                                sectionWidth, // Takes up 1/3 of the screen width
                            color: selectedSection == 1
                                ? const Color(0xFF414ECA)
                                : const Color(0xFF8B8B8B),
                          ),
                          Container(
                            height: selectedSection == 2 ? 3 : 2,
                            width:
                                sectionWidth, // Takes up 1/3 of the screen width
                            color: selectedSection == 2
                                ? const Color(0xFF414ECA)
                                : const Color(0xFF8B8B8B),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 10),

            // Dynamic Content Sections
            if (selectedSection == 0)
              WidgetAbout.buildAboutSection(screenWidth, context),
            if (selectedSection == 1)
              WidgetLessons.buildLessonsSection(screenWidth, context),
            if (selectedSection == 2)
              WidgetReviews.buildReviewsSection(screenWidth, context),

            const SizedBox(height: 10),

            // Enroll Button
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => const EnrollScreen10()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF414ECA),
                fixedSize: Size(isMobile ? 300 : 400, 47),
              ),
              child: Text(
                'Enroll Now!',
                style: GoogleFonts.nunito(
                  fontSize: isMobile ? 18 : 22,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
