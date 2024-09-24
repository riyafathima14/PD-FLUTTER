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
        actions: [
          const SizedBox(
            width: 50,
          ),
          Text(
            ' Tutor Profile',
            style: GoogleFonts.nunito(
                color: const Color(0xFF260446),
                fontSize: 15,
                fontWeight: FontWeight.w700),
          ),
          const Spacer(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: screewidth / 17, right: screewidth / 17),
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
                      radius: 50,
                      backgroundColor: const Color(0xFFCACEF9),
                      child: Image.asset('assets/images/profile1.png'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'James Hok',
                      style: GoogleFonts.nunito(
                        fontSize: 17,
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
                        fontSize: 17,
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
                children: [
                  Column(
                    children: [
                      Text(
                        '12',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: const Color(0xFF414ECA),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Courses',
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          color: const Color(0xFF8B8B8B),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screewidth / 10,
                  ),
                  Container(
                    width: 1,
                    height: 50,
                    decoration: const BoxDecoration(color: Color(0xFF8B8B8B)),
                  ),
                  SizedBox(
                    width: screewidth / 10,
                  ),
                  Column(
                    children: [
                      Text(
                        '1.32K',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: const Color(0xFF414ECA),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Students',
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          color: const Color(0xFF8B8B8B),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screewidth / 10,
                  ),
                  Container(
                    width: 1,
                    height: 50,
                    decoration: const BoxDecoration(color: Color(0xFF8B8B8B)),
                  ),
                  SizedBox(
                    width: screewidth / 10,
                  ),
                  Column(
                    children: [
                      Text(
                        '965',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: const Color(0xFF414ECA),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Reviews',
                        style: GoogleFonts.nunito(
                          fontSize: 15,
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
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF404DC7),
                      //fixedSize: Size(140, 36)
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.sms,
                          color: Color(0xFFFFFFFF),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
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
                  SizedBox(
                    width: screewidth / 8,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFFFFF),
                        side: const BorderSide(
                            color: Color(0xFF404DC7), width: 1.5)
                        //fixedSize: Size(140, 36)
                        ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.drafts,
                          color: Color(0xFF414ECA),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'About Tutor',
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  color: const Color(0xFF414ECA),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Skilled UI/UX Instructor at Google with a strong dedication to crafting detailed, user-friendly, and captivating user experiences.',
                style: GoogleFonts.nunito(
                  fontSize: 14,
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
                  fontSize: 15,
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
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                          color: const Color(0xFF404DC7), width: 1.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'System Design',
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF414ECA),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                          color: const Color(0xFF404DC7), width: 1.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Product Design',
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF414ECA),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
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
                    width: 125,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                          color: const Color(0xFF404DC7), width: 1.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'User Experience',
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF414ECA),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 165,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      border: Border.all(
                          color: const Color(0xFF404DC7), width: 1.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Graphics & 3D Animation',
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF414ECA),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
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
                  fontSize: 12,
                  color: const Color(0xFF414ECA),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset('assets/images/figma.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Figma",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: const Color(0xFF8b8b8b),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/images/micro.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Micro",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: const Color(0xFF8b8b8b),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/images/notion.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Notion",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: const Color(0xFF8b8b8b),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset('assets/images/Jira.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Jira",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: const Color(0xFF8b8b8b),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/images/creativeai.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "creative AI",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: const Color(0xFF8b8b8b),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset('assets/images/adobexd.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Adobe XD",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: const Color(0xFF8b8b8b),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Career Path",
                style: GoogleFonts.nunito(
                  fontSize: 12,
                  color: const Color(0xFF414ECA),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/Imiot.png',
                    width: 45,
                    height: 45,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UI/UX Designer Head",
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF260446),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Imiot Inc.",
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF434343),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "August 2023 - Present (01 Months)",
                        style: GoogleFonts.nunito(
                          fontSize: 10,
                          color: const Color(0xFF434343),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/Google.png',
                    width: 45,
                    height: 45,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UI/UX Designer",
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF260446),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Google LLC.",
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF434343),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "August 2022 - August 2023 (1 Years)",
                        style: GoogleFonts.nunito(
                          fontSize: 10,
                          color: const Color(0xFF434343),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/Accenture.png',
                    width: 45,
                    height: 45,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UI/UX Designer",
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF260446),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Accenture Inc.",
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF434343),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "June 2021 - August 2022 (2 Years)",
                        style: GoogleFonts.nunito(
                          fontSize: 10,
                          color: const Color(0xFF434343),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/Deloitte.png',
                    width: 45,
                    height: 45,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UI/UX Designer Intern",
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF260446),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Deloitte Inc.",
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: const Color(0xFF434343),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "March 2021 - June 2021 (4 Months)",
                        style: GoogleFonts.nunito(
                          fontSize: 10,
                          color: const Color(0xFF434343),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedSection = 0;
                      });
                    },
                    child: Text(
                      "Courses",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: selectedSection == 0
                              ? const Color(0xFF414ECA)
                              : const Color(0xFF8b8b8b)),
                    ),
                  ),
                  SizedBox(
                    width: screewidth / 7,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedSection = 1;
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const TutorProfileScreen2(selectedSection: 1,),
                          ),
                        );
                      });
                    },
                    child: Text(
                      "Students",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: selectedSection == 1
                              ? const Color(0xFF414ECA)
                              : const Color(0xFF8b8b8b)),
                    ),
                  ),
                  SizedBox(
                    width: screewidth / 7,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(
                        () {
                          selectedSection = 2;
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const TutorProfileScreen2(selectedSection:2),
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Reviews",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: selectedSection == 2
                              ? const Color(0xFF414ECA)
                              : const Color(0xFF8b8b8b)),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: selectedSection == 0 ? 4 : 3,
                    width: screewidth / 3.4,
                    color: selectedSection == 0
                        ? const Color(0xFF414ECA)
                        : const Color(0xFF8B8B8B),
                  ),
                  Container(
                    height: selectedSection == 1 ? 4 : 3,
                    width: screewidth / 3.4,
                    color: selectedSection == 1
                        ? const Color(0xFF414ECA)
                        : const Color(0xFF8B8B8B),
                  ),
                  Container(
                    height: selectedSection == 2 ? 4 : 3,
                    width: screewidth / 3.4,
                    color: selectedSection == 2
                        ? const Color(0xFF414ECA)
                        : const Color(0xFF8B8B8B),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              if (selectedSection == 0) _buildCoursesSection(screewidth),
              //if(selectedSection==1 || selectedSection==2)  _buildNavigateSection(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCoursesSection(double screenwidth) {
  return Padding(
    padding: const EdgeInsets.all(0.1),
    child: Column(
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                height: 18,
                                //width: course.category.length.toDouble(),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
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
                                        color: const Color.fromARGB(
                                            136, 135, 134, 134),
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
                                        color: const Color.fromARGB(
                                            136, 135, 134, 134),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    " Aspirants",
                                    style: GoogleFonts.nunito(
                                        color: const Color.fromARGB(
                                            136, 135, 134, 134),
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
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            );
          },
        ),
        Row(
          children: [
            Text(
              'We',
              style: GoogleFonts.nunito(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: const Color(0x80414ECA),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Creating True',
              style: GoogleFonts.nunito(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}
