import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/widgettoplearnersprofile.dart';
import 'package:pd/files/widgetcoursecontainer.dart';
import 'package:pd/screens/bookmarks_screen.dart';
import 'package:pd/screens/coursedetails_screen1.dart';
import 'package:pd/screens/leaderboards_flashscreen.dart';
import 'package:pd/screens/most_popularcourse_screen.dart';
import 'package:pd/screens/mycouses_page.dart';
import 'package:pd/screens/search_page.dart';
import 'package:pd/screens/toplearners_screen.dart';
import '../files/course.dart';
import 'package:pd/files/allcourses.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Course> filteredCourses = allCourses;
  int? selectedCourseIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    List<String> names = [
      'Josemon',
      'Raghav',
      'Sandra',
      'Richard',
      'Thumshi',
      'Ardra',
      'Anupama',
    ];
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
          filteredCourses = allCourses;
        } else {
          filteredCourses = allCourses
              .where((course) => course.category == courseNames[index!])
              .toList();
        }
      });
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leadingWidth: 110,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Image.asset('assets/images/main logo.png'),
        ),
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const BookmarksScreen(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/notification icon.png',
                width: 36,
                height: 36,
              )),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LeaderboardsFlashscreen(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/message icon.png',
              width: 36,
              height: 36,
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyCoursesPage(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/account icon.png',
              width: 36,
              height: 36,
            ),
          ),
          const SizedBox(width: 25)
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          bool isDesktop = width > 600; // Change this threshold as needed

          return SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(isDesktop ? 30.0 : 15.0),
                child: Column(
                  children: [
                    OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const SearchPage(),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: const Color.fromARGB(173, 217, 217, 217),
                      side: const BorderSide(
                        width: 2.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      
                      fixedSize: Size(screenWidth * 0.8, 56), // 90% of screen width
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.search),
                        const SizedBox(width: 10),
                        Text(
                          'Search for a Course or Mentor',
                          style: GoogleFonts.nunito(
                            fontSize: isDesktop ? 16 : 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(138, 0, 0, 0),
                          ),
                        ),
                        const Spacer(),
                        Image.asset('assets/images/Vector.png'),
                      ],
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            'Top Learners',
                            style: GoogleFonts.nunito(
                                color: const Color(0xFF414ECA),
                                fontSize: isDesktop ? 18 : 14,
                                fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const ToplearnersScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "See All",
                              style: GoogleFonts.nunito(
                                  color: const Color(0xFF414ECA),
                                  fontSize: isDesktop ? 14 : 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: isDesktop ? 100 : 90,
                      child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Widgettoplearnersprofile.profiles(
                              names[index], index);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            'Most Popular Courses',
                            style: GoogleFonts.nunito(
                                color: const Color(0xFF414ECA),
                                fontSize: isDesktop ? 18 : 14,
                                fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MostPopularcourseScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "See All",
                              style: GoogleFonts.nunito(
                                  color: const Color(0xFF414ECA),
                                  fontSize: isDesktop ? 14 : 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                              child: Widgetcoursecontainer.listCourseContainer(
                                  courseNames[index],
                                  selectedCourseIndex!,
                                  index,context),
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
                                onTap: () {
                                  if (course.category == "Designs" &&
                                      course.title == 'UIUX Designing - Advanced') {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CoursedetailsScreen1(),
                                      ),
                                    );
                                  }
                                },
                                child: Widgetcoursecontainer.courseContainer(
                                    course, selectedCourseIndex!, index,context),
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
            ),
          );
        },
      ),
    );
  }
}
