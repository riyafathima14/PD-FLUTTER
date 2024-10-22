import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/widgetCompletedSection.dart';
import 'package:pd/files/widgetongoingsection.dart';
import 'package:pd/screens/home_page.dart';
import 'package:pd/screens/search_page.dart';

class MyCoursesPage extends StatefulWidget {
  const MyCoursesPage({super.key});

  @override
  State<MyCoursesPage> createState() => _MyCoursesPageState();
}

class _MyCoursesPageState extends State<MyCoursesPage> {
  int selectedSection = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isMobile = screenWidth < 600;

    double titleFontSize = isMobile ? 14 : 18;
    double tabFontSize = isMobile ? 14 : 16;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const HomePage(),
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
            child: const Icon(Icons.arrow_back)),
        title: Text(
          'My Courses',
          style: GoogleFonts.nunito(
            color: const Color(0xFF260446),
            fontSize: titleFontSize, 
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
             Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const SearchPage(),
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
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset('assets/images/action_key.png'),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth / (isMobile ? 17 : 10),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth / (isMobile ? 17 : 10),
                  ),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            selectedSection = 0;
                          });
                        },
                        child: Text(
                          "Ongoing",
                          style: GoogleFonts.nunito(
                            fontSize: tabFontSize,
                            fontWeight: FontWeight.w700,
                            color: selectedSection == 0
                                ? const Color(0xFF414ECA)
                                : const Color(0xFF8B8B8B),
                          ),
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            selectedSection = 1;
                          });
                        },
                        child: Text(
                          "Completed",
                          style: GoogleFonts.nunito(
                            fontSize: tabFontSize,
                            fontWeight: FontWeight.w700,
                            color: selectedSection == 1
                                ? const Color(0xFF414ECA)
                                : const Color(0xFF8B8B8B),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: selectedSection == 0 ? 3 : 2,
                        color: selectedSection == 0
                            ? const Color(0xFF414ECA)
                            : const Color(0xFF8B8B8B),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: selectedSection == 1 ? 3 : 2,
                        color: selectedSection == 1
                            ? const Color(0xFF414ECA)
                            : const Color(0xFF8B8B8B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                if (selectedSection == 0)
                  Widgetongoingsection.ongoingSection(screenWidth, context),
                if (selectedSection == 1)
                  WidgetCompletedSection.completedSection(screenWidth, context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
