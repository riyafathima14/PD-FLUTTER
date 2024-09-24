import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/course_tour_screen.dart';

class Widgetlessons {
  static Widget buildLessonsSection(double screewidth,BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screewidth / 17, right: screewidth / 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Tools",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
              const Spacer(),
              Text(
                "See All",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Section 1 - Introduction",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
              const Spacer(),
              Text(
                "180 mins",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap:() {
               Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const CourseTourScreen(),
                ),
              );
            },
            child: Container(
              height: 83,
              width: screewidth,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color:const  Color.fromARGB(255, 220, 216, 216),
                ),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Padding(
                padding: EdgeInsets.all(screewidth / 25),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color:const  Color.fromARGB(255, 220, 216, 216),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "01",
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF414ECA)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deep Dive into UI Research',
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF000000)),
                        ),
                        Text(
                          "10 min",
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF8B8B8B)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.play_circle_fill_rounded,
                      color: Color(0xFF414ECA),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "02",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IA for Complex Systems',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.lock,
                    color: Color(0xFF8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Section 2 - Tools",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
              const Spacer(),
              Text(
                "180 mins",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "03",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'UI Design Systems and Scalability',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "04",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Advanced Prototyping',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "05",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Persuasion and Influence',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "06",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Designing for Emerging Tech',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Section 3 - Let’s Practice",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
              const Spacer(),
              Text(
                "180 mins",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "07",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'UI Design Systems and Scalability',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                 const  Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "08",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Design for Business Impact',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                 const  Icon(
                    Icons.lock,
                    color:  Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "09",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Future of UI/UX Design',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                 const  Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Section 4 - Let’s Practice Advanced",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
              const Spacer(),
              Text(
                "180 mins",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "10",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Design for Global Audiences',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                 const  Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "11",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dark UX and Ethical Design',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                 const  Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "12",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Design for Business Impact',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                 const  Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "Section 4 - Project",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
              const Spacer(),
              Text(
                "180 mins",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "13",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Professional Development',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                 const  Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screewidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screewidth / 25),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Color.fromARGB(255, 220, 216, 216),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "14",
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Portfolio Building',
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF000000)),
                      ),
                      Text(
                        "30 min",
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B)),
                      ),
                    ],
                  ),
                  const Spacer(),
                 const  Icon(
                    Icons.lock,
                    color: const Color(0xFF8b8b8b8b),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
