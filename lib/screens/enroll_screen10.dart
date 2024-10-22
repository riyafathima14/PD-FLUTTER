import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/course.dart';
import 'package:pd/screens/coursedetails_screen1.dart';
import 'package:pd/screens/enroll_screen11.dart';

class EnrollScreen10 extends StatelessWidget {
  const EnrollScreen10({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;

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
              child: const Icon(Icons.arrow_back),
            ),
            title: Text(
              'Check out',
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: const Color(0xFF260446),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth / 20, vertical: 10),
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
                        height: screenWidth > 600 ? 180 : 130, // Adjust height for desktop
                        width: screenWidth,
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(course.imageUrl, width: screenWidth > 600 ? 100 : 80),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 15),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(207, 223, 220, 220),
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                      ),
                                      height: 18,
                                      width: 74,
                                      child: Text(
                                        course.category,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.nunito(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xFF414ECA),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      course.title,
                                      style: GoogleFonts.nunito(
                                        color: const Color(0xFF414ECA),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "₹${course.rate}",
                                          style: GoogleFonts.nunito(
                                            color: const Color(0xFF414ECA),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          "₹${course.orgRate}",
                                          style: GoogleFonts.nunito(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xFF8B8B8B),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star_half,
                                          color: Color(0xFFE6C100),
                                          size: 13,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          '${course.rating}',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF8B8B8B),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          "${course.enrolledAspirants} Aspirants",
                                          style: GoogleFonts.nunito(
                                            color: const Color(0xFF8B8B8B),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Divider(color: Color.fromARGB(255, 182, 179, 179), thickness: 2),
                      const SizedBox(height: 10),

                      
                      ..._buildCourseDetails(course),
                    ],
                  ),
                ),
              ),

            
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth / 20, vertical: 10), // Added padding
                child: Row(
                  children: [
                    Text(
                      "Total",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF8B8B8B),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "₹${course.rate}",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF414ECA),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              
              SizedBox(
                width: screenWidth * 0.7,
                child: ElevatedButton(
                  onPressed: () {
                   Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const EnrollScreen11(),
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF414ECA),
                    fixedSize: Size(screenWidth, 47), 
                  ),
                  child: Text(
                    'Check Out',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  List<Widget> _buildCourseDetails(Course course) {
    return [
      _buildDetailRow("Domain:", course.category),
      const SizedBox(height: 10),
      _buildDetailRow("Course Name:", course.title),
      const SizedBox(height: 10),
      _buildDetailRow("Actual Course Price:", "INR.${course.orgRate}"),
      const SizedBox(height: 10),
      _buildDetailRow("Current Offer Price:", "INR.${course.rate}"),
    ];
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF8B8B8B),
          ),
        ),
        
        Text(
          value,
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF414ECA),
          ),
        ),
      ],
    );
  }
}
