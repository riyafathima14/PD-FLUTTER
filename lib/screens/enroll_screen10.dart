import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/course.dart';
import 'package:pd/screens/coursedetails_screen1.dart';
import 'package:pd/screens/enroll_screen11.dart';

class EnrollScreen10 extends StatelessWidget {
  const EnrollScreen10({super.key});
  @override
  Widget build(BuildContext context) {
    double screewidth = MediaQuery.of(context).size.width;
    Course course = Course(
      title: "UIUX Designing - Advanced",
      category: "Designs",
      imageUrl: 'assets/images/c1.png',
      rate: 5999,
      orgRate: 10999,
      rating: 4.5,
      enrolledAspirants: 1356,
    );
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const CoursedetailsScreen1(),
                ),
              );
            },
            child: const Icon(Icons.arrow_back)),
        title: Text(
          'Check out',
          style: GoogleFonts.nunito(
              fontSize: 14,
              color: const Color(0xFF260446),
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.start,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: screewidth / 17, top: 6, right: screewidth / 17),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(189, 200, 197, 197),
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              height: 130,
              width: screewidth,
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
                              color: Color.fromARGB(207, 223, 220, 220),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          height: 18,
                          width: 74,
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
                            Text("${course.orgRate}",
                                style: GoogleFonts.nunito(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF8B8B8B),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_half,
                              color: Color(0xFFE6C100),
                              size: 13,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${course.rating}',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF8B8B8B),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "${course.enrolledAspirants}",
                              style: GoogleFonts.nunito(
                                  color: const Color(0xFF8B8B8B),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              " Aspirants",
                              style: GoogleFonts.nunito(
                                  color: const Color(0xFF8B8B8B),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 2,
              width: screewidth,
              color: const Color.fromARGB(255, 182, 179, 179),
              
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text(
                "Domain:",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
              const Spacer(),
              Text(
                course.category,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text(
                "Course Name:",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
              const Spacer(),
              Text(
                course.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text(
                "Actual Course Price:",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
              const Spacer(),
              Text(
                "INR.${course.orgRate}",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Text(
                "Current Offer Price:",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
              const Spacer(),
              Text(
                "INR.${course.rate}",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                "Total",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
              const Spacer(),
              Text(
                "₹${course.rate}",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
              ],
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const EnrollScreen11(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF414ECA),
                fixedSize: const Size(300, 47),
              ),
              child: Text(
                'Check Out',
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFFFFFFF)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
