import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/widgetCompletedSection.dart';
import 'package:pd/files/widgetongoingsection.dart';
import 'package:pd/screens/home_page.dart';
import 'package:pd/screens/search_page.dart';

class MyCoursesPage extends StatefulWidget {
  const MyCoursesPage ({super.key});

  @override
  State<MyCoursesPage> createState() => _MyCoursesPageState();
}

class _MyCoursesPageState extends State<MyCoursesPage> {
  int selectedSection = 0;

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Define breakpoints for responsive design
    bool isMobile = screenWidth < 600;

    // Adjust font sizes based on screen width
    double titleFontSize = isMobile ? 14 : 18;
    double tabFontSize = isMobile ? 14 : 16;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: const Icon(Icons.arrow_back)),
        title: Text(
          'My Courses',
          style: GoogleFonts.nunito(
            color: const Color(0xFF260446),
            fontSize: titleFontSize, // Responsive title font size
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
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
        child: SingleChildScrollView( // Added to make the page scrollable
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
                            fontSize: tabFontSize, // Responsive tab font size
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
                            fontSize: tabFontSize, // Responsive tab font size
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
                    Container(
                      height: selectedSection == 0 ? 3 : 2,
                      width: (screenWidth - (screenWidth / (isMobile ? 17 : 10) * 2)) / 2,
                      color: selectedSection == 0
                          ? const Color(0xFF414ECA)
                          : const Color(0xFF8B8B8B),
                    ),
                    Container(
                      height: selectedSection == 1 ? 3 : 2,
                      width: (screenWidth - (screenWidth / (isMobile ? 17 : 10) * 2)) / 2,
                      color: selectedSection == 1
                          ? const Color(0xFF414ECA)
                          : const Color(0xFF8B8B8B),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Adjusting sections
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
