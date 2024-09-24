import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/design_screen3d.dart';

class WidgetCompletedSection {
  static Widget completedSection(double screenwidth,BuildContext context) {
    List<String> completedCourses = [
      '3D Design Illustration',
      'Flutter Development for Apps',
      'React JS Web Development',
      'Django for Web Development',
      'Graphic Designing -Basics'
    ];

    List<String> imageUrl = [
      'assets/images/c6.png',
      'assets/images/c8.png',
      'assets/images/c2.png',
      'assets/images/c9.png',
      'assets/images/c6.png',
    ];

    return Padding(
      padding: const EdgeInsets.all(0.1),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Column(
            children: List.generate(completedCourses.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: GestureDetector(
                  onTap:(){
                    if(completedCourses[index]=='3D Design Illustration') {
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DesignScreen()));}
                  },
                  child: Container(
                    width: screenwidth,
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(189, 200, 197, 197),
                        width: 2,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(imageUrl[index]), 
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                completedCourses[index], 
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF3A0070),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "90 hrs 35 mins", 
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF8B8B8B),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 7,
                                    width: screenwidth / 2.2,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF414ECA),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    '15/15', 
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
