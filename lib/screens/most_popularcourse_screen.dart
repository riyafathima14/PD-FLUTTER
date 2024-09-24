import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/allcourses.dart';
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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
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
                  padding: const EdgeInsets.only(bottom: 4),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: filteredCourses.length,
                  itemBuilder: (context, index) {
                    final course = filteredCourses[index];
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: courseContainer(course),
                        ),
                        const SizedBox(
                          height: 10,
                        )
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
  }
}
