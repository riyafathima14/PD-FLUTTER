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
  State<CoursedetailsScreen1> createState() => _CoursedetailsScreenState();
}

class _CoursedetailsScreenState extends State<CoursedetailsScreen1> {
  int? selectedSection = 0;
  Course course = Course(
      title: "UIUX Designing - Advanced",
      category: "Designs",
      imageUrl: "assets/images/c1.png",
      rate: 5999,
      orgRate: 10999,
      rating: 4.5,
      enrolledAspirants: 1356);
  @override
  Widget build(BuildContext context) {
    double screewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: 308,
                    width: screewidth,
                    child: Image.asset('assets/images/Icon1.png')),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10),
                  child: CircleAvatar(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: screewidth / 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    course.title,
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF414ECA),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 238, 234, 234),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        height: 18,
                        width: 75,
                        child: Text(
                          course.category,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF414ECA)),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Icons.star_half,
                        color: Color(0xffE6C100),
                        size: 12,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '${course.rating}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "${course.enrolledAspirants}",
                        style: GoogleFonts.nunito(
                            color: const Color(0xFF8B8B8B),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        " Aspirants",
                        style: GoogleFonts.nunito(
                            color: const Color(0xFF8B8B8B),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "${course.rate}",
                        style: GoogleFonts.nunito(
                          color: const Color(0xFF414ECA),
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("${course.orgRate}",
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screewidth / 17, top: 6),
              child: Row(
                children: [
                  Image.asset('assets/images/Icon3.png'),
                  Text(
                    "${course.enrolledAspirants}",
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF8B8B8B),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    " Aspirants",
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF8B8B8B),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: screewidth / 11,
                  ),
                  const Icon(Icons.av_timer, color: Color(0xFF414ECA)),
                  Text(
                    " 90 Hours",
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF8B8B8B),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: screewidth / 11,
                  ),
                  const Icon(Icons.workspace_premium, color: Color(0xFF414ECA)),
                  Text(
                    " Certified",
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF8B8B8B),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screewidth / 17, right: screewidth / 17),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedSection = 0;
                      });
                    },
                    child: Text(
                      "About",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                    ),
                  ),
                  SizedBox(
                    width: screewidth / 7,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedSection = 1;
                      });
                    },
                    child: Text(
                      "Lessons",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                    ),
                  ),
                  SizedBox(
                    width: screewidth / 7,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedSection = 2;
                      });
                    },
                    child: Text(
                      "Reviews",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screewidth / 17, right: screewidth / 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: selectedSection == 0 ? 3 : 2,
                    width: screewidth / 3.4,
                    color: selectedSection == 0
                        ? const Color(0xFF414ECA)
                        : const Color(0xFF8B8B8B),
                  ),
                  Container(
                    height: selectedSection == 1 ? 3 : 2,
                    width: screewidth / 3.4,
                    color: selectedSection == 1
                        ? const Color(0xFF414ECA)
                        : const Color(0xFF8B8B8B),
                  ),
                  Container(
                    height: selectedSection == 2 ? 3 : 2,
                    width: screewidth / 3.4,
                    color: selectedSection == 2
                        ? const Color(0xFF414ECA)
                        : const Color(0xFF8B8B8B),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            if (selectedSection == 0) WidgetAbout.buildAboutSection(screewidth,context),
            if (selectedSection == 1)
              Widgetlessons.buildLessonsSection(screewidth,context),
            if (selectedSection == 2)
              WidgetReviews.buildReviewsSection(screewidth),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const EnrollScreen10(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF414ECA),
                fixedSize: const Size(300, 47),
              ),
              child: Text(
                'Enroll Now!',
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFFFFFFF)),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
