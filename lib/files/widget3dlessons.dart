import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Widget3dlessons {
  static Widget build3dlessons(double screenwidth,BuildContext context)
  {
      return Padding(padding: EdgeInsets.all(0.1),
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
          Container(
            height: 83,
            width: screenwidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenwidth / 25),
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
                      "01",
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
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 83,
            width: screenwidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenwidth / 25),
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
                    Icons.play_circle_fill_rounded,
                    color: Color(0xFF414ECA),
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
            width: screenwidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenwidth / 25),
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
                     Icons.play_circle_fill_rounded,
                    color: Color(0xFF414ECA),
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
            width: screenwidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenwidth / 25),
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
                    Icons.play_circle_fill_rounded,
                    color: Color(0xFF414ECA),
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
            width: screenwidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenwidth / 25),
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
                    Icons.play_circle_fill_rounded,
                    color: Color(0xFF414ECA),
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
            width: screenwidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenwidth / 25),
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
                  const Icon(
                     Icons.play_circle_fill_rounded,
                    color: Color(0xFF414ECA),
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
            width: screenwidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenwidth / 25),
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
                 const  Icon(
                    Icons.play_circle_fill_rounded,
                    color: Color(0xFF414ECA),
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
            width: screenwidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenwidth / 25),
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
                 const  Icon(
                     Icons.play_circle_fill_rounded,
                    color: Color(0xFF414ECA),
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
            width: screenwidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenwidth / 25),
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
                 const  Icon(
                   Icons.play_circle_fill_rounded,
                    color: Color(0xFF414ECA),
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
            width: screenwidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 220, 216, 216),
              ),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenwidth / 25),
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
                 const  Icon(
                    Icons.play_circle_fill_rounded,
                    color: Color(0xFF414ECA),
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