import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/tutorreviewsection.dart';
import 'package:pd/screens/coursedetails_screen1.dart';
import 'package:pd/screens/tutor_profile_screen1.dart';
import 'package:pd/files/widgetstudents.dart';

class TutorProfileScreen2 extends StatefulWidget {
  const TutorProfileScreen2({super.key, required this.selectedSection});
  final int? selectedSection;

  @override
  State<TutorProfileScreen2> createState() => _TutorProfileScreen2State();
}

class _TutorProfileScreen2State extends State<TutorProfileScreen2> {
  late int? selectedSection;
  @override
  void initState() {
    super.initState();

    selectedSection = widget.selectedSection;
  }

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
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        selectedSection = 0;
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const TutorProfileScreen1(),
                          ),
                        );
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
              if (selectedSection == 1)
                WidgetStudents.buildStudentSection(screewidth, context),
              if (selectedSection == 2)
                WidgetTutorReviews.buildTutorReviewsSection(screewidth),
              const SizedBox(
                height: 10,
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
              Text(
                'Engineers',
                style: GoogleFonts.nunito(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF8B8B8B),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text('🧡 '),
                  Text(
                    'from ',
                    style: GoogleFonts.nunito(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF8B8B8B),
                    ),
                  ),
                  Text(
                    'ShareInfo ',
                    style: GoogleFonts.nunito(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFFF19A6B),
                    ),
                  ),
                  Text(
                    'community team',
                    style: GoogleFonts.nunito(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF8B8B8B),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
