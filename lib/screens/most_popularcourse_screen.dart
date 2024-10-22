import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/allcourses.dart';
import 'package:pd/files/widgetcoursecontainer.dart';
import 'package:pd/screens/home_page.dart';
import 'package:pd/screens/search_page.dart';
import '../files/course.dart';

class MostPopularcourseScreen extends StatefulWidget {
  const MostPopularcourseScreen({super.key});

  @override
  State<MostPopularcourseScreen> createState() =>
      _MostPopularcourseScreenState();
}

class _MostPopularcourseScreenState extends State<MostPopularcourseScreen> {
  int? selectedCourseIndex = 0;
  List<Course> filteredCourses = allCourses;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    List<String> courseNames = [
      'All',
      'Data Science',
      'Designs',
      'Development',
      'Graphics',
      'Marketing',
      'Buisness'
    ];

    void filterCourses(int? index) {
      setState(() {
        selectedCourseIndex = index;
        if (index == 0) {
          filteredCourses = allCourses; // Show all courses for "All"
        } else {
          filteredCourses = allCourses
              .where((course) => course.category == courseNames[index!])
              .toList();
        }
      });
    }

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
        actions: [
          const SizedBox(
            width: 50,
          ),
          Text(
            'Most Popular Courses',
            style: GoogleFonts.nunito(
                color: const Color(0xFF260446),
                fontSize: 14,
                fontWeight: FontWeight.w700),
          ),
          const Spacer(),
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
            child: Image.asset('assets/images/action_key.png'),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          bool isDesktop = width > 600;
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  SizedBox(
                    height: isDesktop ? 60 : 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: courseNames.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCourseIndex = index;
                                filterCourses(index);
                              });
                            },
                            child: SizedBox(
                               width: isDesktop
                                    ? screenWidth * 0.20
                                    : screenWidth * 0.38,
                              child: Widgetcoursecontainer.listCourseContainer(
                                  courseNames[index],
                                  selectedCourseIndex!,
                                  index,
                                  context),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: filteredCourses.length,
                      itemBuilder: (context, index) {
                        final course = filteredCourses[index];
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: 
                                 Widgetcoursecontainer.courseContainer(
                                    course, selectedCourseIndex!, index, context),
                              
                            ),
                            const SizedBox(height: 10),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
