import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/bookmarks_screen.dart';
import 'package:pd/screens/coursedetails_screen1.dart';
//import 'package:google_fonts/google_fonts.dart';
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
    Widget courseContainer(Course course) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 181, 180, 180),
            width: 1,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        height: 130,
        width: 360,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                course.imageUrl,
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(106, 179, 178, 178),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    height: 18,
                  //width: course.category.length.toDouble(),
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(

                      course.category,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    course.title,
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF414ECA),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Text(
                        "${course.rate}",
                        style: GoogleFonts.nunito(
                          color: const Color(0xFF414ECA),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("${course.rate}",
                          style: GoogleFonts.nunito(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(136, 135, 134, 134),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_half,
                        color: Color(0xffE6C100),
                        size: 16,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${course.rating}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(136, 135, 134, 134),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "${course.enrolledAspirants}",
                        style: GoogleFonts.nunito(
                            color: const Color.fromARGB(136, 135, 134, 134),
                            fontSize: 10,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        " Aspirants",
                        style: GoogleFonts.nunito(
                            color: const Color.fromARGB(136, 135, 134, 134),
                            fontSize: 10,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const Align(
                  alignment: Alignment(0.5, -1.0),
                  child: Icon(
                     Icons.bookmarks_outlined,
                    color: Color(0xffd9d9d9),
                  )),
            ],
          ),
        ),
      );
    }

    

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
          const SizedBox(
            width: 10,
          ),
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
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyCousesPage(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/account icon.png',
              width: 36,
              height: 36,
            ),
          ),
          const SizedBox(
            width: 25,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
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
                      fixedSize: const Size(365, 56)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.search),
                      const SizedBox(width: 10),
                      Text(
                        'Search for a Course or Mentor',
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(138, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Image.asset('assets/images/Vector.png')
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
                            fontSize: 14,
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
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              radius: 24.5,
                              backgroundImage:
                                  AssetImage('assets/images/tp$index.png'),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              names[index],
                              style: GoogleFonts.nunito(
                                  color: const Color(0xFF414ECA),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      );
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
                            fontSize: 14,
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
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: courseNames.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCourseIndex = index;
                              filterCourses(index);
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedCourseIndex == index
                                  ? const Color(
                                      0xFF414ECA) // Blue for selected course
                                  : Colors.white,
                              border: Border.all(
                                color: const Color(0xFF414ECA),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10.0),
                            child: Center(
                              child: Text(
                                courseNames[index],
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: selectedCourseIndex == index
                                      ? Colors.white // Blue for selected course
                                      : const Color(0xFF414ECA),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
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
                            child: courseContainer(course),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
