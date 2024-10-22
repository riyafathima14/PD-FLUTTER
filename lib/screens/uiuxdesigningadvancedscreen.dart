import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/course.dart';
import 'package:pd/files/widgetlessons.dart';
import 'package:pd/screens/mycouses_page.dart';
import 'package:pd/screens/uiuxscreen2.dart';

class UIUXDesigningAdvancedScreen extends StatefulWidget {
  const UIUXDesigningAdvancedScreen({super.key});

  @override
  State<UIUXDesigningAdvancedScreen> createState() =>
      _UIUXDesigningAdvancedScreenState();
}

class _UIUXDesigningAdvancedScreenState
    extends State<UIUXDesigningAdvancedScreen> {
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
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isDesktop = constraints.maxWidth >= 800;

            return Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: isDesktop ? 400 : 308,
                      width: screenWidth,
                      child: Image.asset('assets/images/Icon1.png',
                          fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 10),
                      child: CircleAvatar(
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const MyCoursesPage(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                var begin = 0.0;
                var end = 1.0;
                var tween = Tween(begin: begin, end: end);
                var fadeAnimation = animation.drive(tween);
                return FadeTransition(opacity: fadeAnimation, child: child);
              },
            ),
          );
                          },
                          icon: const Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth / 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Text(
                        course.title,
                        style: GoogleFonts.nunito(
                          color: const Color(0xFF414ECA),
                          fontSize: isDesktop ? 28 : 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 238, 234, 234),
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                            height: isDesktop ? 25 : 18,
                            width: isDesktop ? 90 : 75,
                            child: Center(
                              child: Text(
                                course.category,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontSize: isDesktop ? 18 : 13,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF414ECA),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Icon(Icons.star_half,
                              color: Color(0xffE6C100), size: 12),
                          const SizedBox(width: 2),
                          Text(
                            '${course.rating}',
                            style: TextStyle(
                              fontSize: isDesktop ? 16 : 14,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF8B8B8B),
                            ),
                          ),
                          const SizedBox(width: 7),
                          Text(
                            "${course.enrolledAspirants}",
                            style: GoogleFonts.nunito(
                              color: const Color(0xFF8B8B8B),
                              fontSize: isDesktop ? 15 : 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            " Aspirants",
                            style: GoogleFonts.nunito(
                              color: const Color(0xFF8B8B8B),
                              fontSize: isDesktop ? 15 : 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "Owned",
                            style: GoogleFonts.nunito(
                              color: const Color(0xFF414ECA),
                              fontSize: isDesktop ? 24 : 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "License till 2025 Dec 31",
                            style: GoogleFonts.nunito(
                              fontSize: isDesktop ? 16 : 14,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF8B8B8B),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth / 17, vertical: 10),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/Icon3.png'),
                              const SizedBox(width: 5),
                              Text(
                                "${course.enrolledAspirants}",
                                style: GoogleFonts.nunito(
                                  color: const Color(0xFF8B8B8B),
                                  fontSize: isDesktop ? 18 : 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                " Co-Aspirants",
                                style: GoogleFonts.nunito(
                                  color: const Color(0xFF8B8B8B),
                                  fontSize: isDesktop ? 18 : 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.av_timer,
                                  color: Color(0xFF414ECA)),
                              const SizedBox(width: 5),
                              Text(
                                "90 Hours",
                                style: GoogleFonts.nunito(
                                  color: const Color(0xFF8B8B8B),
                                  fontSize: isDesktop ? 18 : 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
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
                                  fontSize: isDesktop ? 18 : 14,
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
                const SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth / 17),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Tools will be Covered",
                            style: GoogleFonts.nunito(
                              fontSize: isDesktop ? 16 : 14,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF414ECA),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "See All",
                            style: GoogleFonts.nunito(
                              fontSize: isDesktop ? 14 : 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF414ECA),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        
                          Image.asset(
                            'assets/images/figma.png',
                            width:
                                isDesktop ? 50 : 39, 
                          ),
                          SizedBox(width: screenWidth / 23),
                          Image.asset(
                            'assets/images/micro.png',
                            width: isDesktop ? 50 : 40,
                          ),
                          SizedBox(width: screenWidth / 23),
                          Image.asset(
                            'assets/images/Jira.png',
                            width: isDesktop ? 50 : 40,
                          ),
                          SizedBox(width: screenWidth / 23),
                          Image.asset(
                            'assets/images/sketch.png',
                            width: isDesktop ? 50 : 40,
                          ),
                          SizedBox(width: screenWidth / 23),
                          Image.asset(
                            'assets/images/an.png',
                            width: isDesktop ? 50 : 40,
                          ),
                          SizedBox(width: screenWidth / 23),
                          Image.asset(
                            'assets/images/adobexd.png',
                            width: isDesktop ? 50 : 39,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const UiUxScreen2(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                var begin = 0.0;
                var end = 1.0;
                var tween = Tween(begin: begin, end: end);
                var fadeAnimation = animation.drive(tween);
                return FadeTransition(opacity: fadeAnimation, child: child);
              },
            ),
          );
                  },
                  child: Column(
                    children: [
                      WidgetLessons.buildAdvancedLessonsSection(
                          screenWidth, context),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
