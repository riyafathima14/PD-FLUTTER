import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/design_courses.dart';
import 'package:pd/screens/coursedetails_screen1.dart';
import 'package:pd/screens/tutor_profile_screen2.dart';

class TutorProfileScreen1 extends StatefulWidget {
  const TutorProfileScreen1({super.key});

  @override
  State<TutorProfileScreen1> createState() => _TutorProfileScreen1State();
}

class _TutorProfileScreen1State extends State<TutorProfileScreen1> {
  int selectedSection = 0;
  @override
  Widget build(BuildContext context) {
    double screewidth = MediaQuery.of(context).size.width;
    double sectionWidth = screewidth / 3;
    bool isDesktop = screewidth > 600;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const CoursedetailsScreen1(),
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
            ' Tutor Profile',
            style: GoogleFonts.nunito(
                color: const Color(0xFF260446),
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
          const Spacer(),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: isMobile ? screewidth / 17 : screewidth / 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: isMobile ? 50 : 60,
                          backgroundColor: const Color(0xFFCACEF9),
                          child: Image.asset('assets/images/profile1.png'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'James Hok',
                          style: GoogleFonts.nunito(
                            fontSize: isMobile ? 17 : 20,
                            color: const Color(0xFF414ECA),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Senior UIUX Designer at Google',
                          style: GoogleFonts.nunito(
                            fontSize: isMobile ? 16 : 20,
                            color: const Color(0xFF8B8B8B),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '12',
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 18 : 20,
                              color: const Color(0xFF414ECA),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: isMobile ? 4 : 8,
                          ),
                          Text(
                            'Courses',
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 14 : 16,
                              color: const Color(0xFF8B8B8B),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: screewidth / 10,
                      // ),
                      Container(
                        width: 1,
                        height: isMobile ? 50 : 60,
                        decoration:
                            const BoxDecoration(color: Color(0xFF8B8B8B)),
                      ),
                      // SizedBox(
                      //   width: screewidth / 10,
                      // ),
                      Column(
                        children: [
                          Text(
                            '1.32K',
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 18 : 20,
                              color: const Color(0xFF414ECA),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: isMobile ? 4 : 8,
                          ),
                          Text(
                            'Students',
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 14 : 16,
                              color: const Color(0xFF8B8B8B),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: screewidth / 10,
                      // ),
                      Container(
                        width: 1,
                        height: isMobile ? 50 : 60,
                        decoration:
                            const BoxDecoration(color: Color(0xFF8B8B8B)),
                      ),
                      // SizedBox(
                      //   width: screewidth / 10,
                      // ),
                      Column(
                        children: [
                          Text(
                            '965',
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 18 : 20,
                              color: const Color(0xFF414ECA),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: isMobile ? 4 : 8,
                          ),
                          Text(
                            'Reviews',
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 14 : 16,
                              color: const Color(0xFF8B8B8B),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        // Changed to Flexible
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF404DC7),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.sms,
                                  color: Color(0xFFFFFFFF),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Message',
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: isDesktop ? 70 : 25), // Added spacing
                      Flexible(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFFFFF),
                            side: const BorderSide(
                                color: Color(0xFF404DC7), width: 1.5),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.drafts,
                                  color: Color(0xFF414ECA),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  'Mail Now',
                                  style: GoogleFonts.nunito(
                                    fontSize: 15,
                                    color: const Color(0xFF414ECA),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Skilled UI/UX Instructor at Google with a strong dedication to crafting detailed, user-friendly, and captivating user experiences.',
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 12 : 14,
                      color: const Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Expertise Domains',
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 15 : 18,
                      color: const Color(0xFF414ECA),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          border: Border.all(
                              color: const Color(0xFF404DC7), width: 1.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Center(
                            child: Text(
                              'System Design',
                              style: GoogleFonts.nunito(
                                fontSize: isMobile ? 13 : 15,
                                color: const Color(0xFF414ECA),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          border: Border.all(
                              color: const Color(0xFF404DC7), width: 1.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Center(
                            child: Text(
                              'Product Design',
                              style: GoogleFonts.nunito(
                                fontSize: isMobile ? 13 : 15,
                                color: const Color(0xFF414ECA),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          border: Border.all(
                              color: const Color(0xFF404DC7), width: 1.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Center(
                            child: Text(
                              'User Experience',
                              style: GoogleFonts.nunito(
                                fontSize: isMobile ? 13 : 15,
                                color: const Color(0xFF414ECA),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          border: Border.all(
                              color: const Color(0xFF404DC7), width: 1.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Center(
                            child: Text(
                              'Graphics & 3D Animation',
                              style: GoogleFonts.nunito(
                                fontSize: isMobile ? 13 : 15,
                                color: const Color(0xFF414ECA),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Expertise Software's",
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 15 : 18,
                      color: const Color(0xFF414ECA),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: screewidth,
                    runSpacing: screewidth * 0.01,
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildSoftwareIcon(
                              "Figma", 'assets/images/figma.png', isMobile),
                          buildSoftwareIcon(
                              "Micro", 'assets/images/micro.png', isMobile),
                          buildSoftwareIcon(
                              "Notion", 'assets/images/notion.png', isMobile),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildSoftwareIcon(
                              "Jira", 'assets/images/Jira.png', isMobile),
                          buildSoftwareIcon("Creative AI",
                              'assets/images/creativeai.png', isMobile),
                        ],
                      ),
                      buildSoftwareIcon(
                          "Adobe XD", 'assets/images/adobexd.png', isMobile),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Career Path",
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 12 : 16,
                      color: const Color(0xFF414ECA),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCareerRow(
                    isMobile: isMobile,
                    companyName: "Imiot Inc.",
                    jobTitle: "UI/UX Designer Head",
                    duration: "August 2023 - Present (01 Months)",
                    imagePath: 'assets/images/Imiot.png',
                  ),
                  buildCareerRow(
                    isMobile: isMobile,
                    companyName: "Google LLC.",
                    jobTitle: "UI/UX Designer",
                    duration: "August 2022 - August 2023 (1 Years)",
                    imagePath: 'assets/images/Google.png',
                  ),
                  buildCareerRow(
                    isMobile: isMobile,
                    companyName: "Accenture Inc.",
                    jobTitle: "UI/UX Designer",
                    duration: "June 2021 - August 2022 (2 Years)",
                    imagePath: 'assets/images/Accenture.png',
                  ),
                  buildCareerRow(
                    isMobile: isMobile,
                    companyName: "Deloitte Inc.",
                    jobTitle: "UI/UX Designer Intern",
                    duration: "March 2021 - June 2021 (4 Months)",
                    imagePath: 'assets/images/Deloitte.png',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedSection = 0;
                            });
                          },
                          child: Text(
                            "Courses",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 13 : 15,
                              fontWeight: FontWeight.w700,
                              color: selectedSection == 0
                                  ? const Color(0xFF414ECA)
                                  : const Color(0xFF8b8b8b),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedSection = 1;
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const TutorProfileScreen2(
                                    selectedSection: 1,
                                  ),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    var begin = 0.0;
                                    var end = 1.0;
                                    var tween = Tween(begin: begin, end: end);
                                    var fadeAnimation = animation.drive(tween);
                                    return FadeTransition(
                                        opacity: fadeAnimation, child: child);
                                  },
                                ),
                              );
                            });
                          },
                          child: Text(
                            "Students",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 13 : 15,
                              fontWeight: FontWeight.w700,
                              color: selectedSection == 1
                                  ? const Color(0xFF414ECA)
                                  : const Color(0xFF8b8b8b),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              selectedSection = 2;
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const TutorProfileScreen2(
                                    selectedSection: 2,
                                  ),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    var begin = 0.0;
                                    var end = 1.0;
                                    var tween = Tween(begin: begin, end: end);
                                    var fadeAnimation = animation.drive(tween);
                                    return FadeTransition(
                                        opacity: fadeAnimation, child: child);
                                  },
                                ),
                              );
                            });
                          },
                          child: Text(
                            "Reviews",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: isMobile ? 13 : 15,
                              fontWeight: FontWeight.w700,
                              color: selectedSection == 2
                                  ? const Color(0xFF414ECA)
                                  : const Color(0xFF8b8b8b),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          height: selectedSection == 0 ? 4 : 3,
                          color: selectedSection == 0
                              ? const Color(0xFF414ECA)
                              : const Color(0xFF8B8B8B),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: selectedSection == 1 ? 4 : 3,
                          color: selectedSection == 1
                              ? const Color(0xFF414ECA)
                              : const Color(0xFF8B8B8B),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: selectedSection == 2 ? 4 : 3,
                          color: selectedSection == 2
                              ? const Color(0xFF414ECA)
                              : const Color(0xFF8B8B8B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  if (selectedSection == 0) _buildCoursesSection(screewidth),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget buildSoftwareIcon(String name, String imagePath, bool isMobile) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(imagePath, height: isMobile ? 30 : 40),
      const SizedBox(width: 5),
      Text(
        name,
        style: GoogleFonts.nunito(
          fontSize: isMobile ? 16 : 18,
          color: const Color(0xFF8b8b8b),
          fontWeight: FontWeight.w700,
        ),
      ),
      SizedBox(
        width: isMobile ? 14 : 17,
      )
    ],
  );
}

Widget buildCareerRow({
  required bool isMobile,
  required String companyName,
  required String jobTitle,
  required String duration,
  required String imagePath,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: Row(
      children: [
        Image.asset(
          imagePath,
          width: isMobile ? 50 : 70,
          height: isMobile ? 50 : 70,
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jobTitle,
              style: GoogleFonts.nunito(
                fontSize: isMobile ? 12 : 14,
                color: const Color(0xFF260446),
                fontWeight: FontWeight.w700,
              ),
            ),
            // const SizedBox(height: 3),
            Text(
              companyName,
              style: GoogleFonts.nunito(
                fontSize: isMobile ? 12 : 14,
                color: const Color(0xFF434343),
                fontWeight: FontWeight.w700,
              ),
            ),
            //const SizedBox(height: 3),
            Text(
              duration,
              style: GoogleFonts.nunito(
                fontSize: isMobile ? 10 : 12,
                color: const Color(0xFF434343),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildCoursesSection(double screenWidth) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;
        return Column(
          children: [
            ListView.builder(
              padding: const EdgeInsets.only(bottom: 4),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: designcourses.length,
              itemBuilder: (context, index) {
                final course = designcourses[index];
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 181, 180, 180),
                            width: 1,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        height: isMobile ? 120 : 130,
                        width: screenWidth,
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                course.imageUrl,
                                height: isMobile ? 60 : 80,
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
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    height: 18,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      course.category,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.nunito(
                                        fontSize: isMobile ? 10 : 12,
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
                                      fontSize: isMobile ? 12 : 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${course.rate}",
                                        style: GoogleFonts.nunito(
                                          color: const Color(0xFF414ECA),
                                          fontSize: isMobile ? 10 : 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        "${course.orgRate}",
                                        style: GoogleFonts.nunito(
                                          fontSize: isMobile ? 9 : 11,
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromARGB(
                                              135, 87, 86, 86),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_half,
                                        color: Color(0xffE6C100),
                                        size: 16,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        '${course.rating}',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromARGB(
                                              136, 135, 134, 134),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        "${course.enrolledAspirants}",
                                        style: GoogleFonts.nunito(
                                          color: const Color.fromARGB(
                                              136, 135, 134, 134),
                                          fontSize: isMobile ? 8 : 10,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        " Aspirants",
                                        style: GoogleFonts.nunito(
                                          color: const Color.fromARGB(
                                              136, 135, 134, 134),
                                          fontSize: isMobile ? 8 : 10,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Align(
                                alignment: const Alignment(0.5, -1.0),
                                child: Icon(
                                  Icons.bookmarks_outlined,
                                  color: const Color(0xffd9d9d9),
                                  size: isMobile ? 20 : 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              },
            ),
            Row(
              children: [
                Text(
                  'We',
                  style: GoogleFonts.nunito(
                    fontSize: isMobile ? 18 : 22,
                    fontWeight: FontWeight.w700,
                    color: const Color(0x80414ECA),
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  'Creating True',
                  style: GoogleFonts.nunito(
                    fontSize: isMobile ? 18 : 22,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    ),
  );
}
