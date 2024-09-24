import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/uiuxdesigningadvancedscreen.dart';

class Widgetongoingsection {
  static Widget ongoingSection(double screenwidth,BuildContext context) {
    int total = 15;
    List<int> completed=[10,5,2];
    return Padding(
      padding: const EdgeInsets.all(0.1),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const UIUXDesigningAdvancedScreen()));
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
                    Image.asset('assets/images/c1.png'),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "UIUX Designing Advanced",
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
                            Stack(
                              children: [
                                Container(
                                  height: 7,
                                  width: screenwidth / 2.2,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD9D9D9),
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: (completed[0] / total) * (screenwidth / 2.2),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 8,),
                            Text('${completed[0]}/$total',style: const TextStyle(fontSize: 12),),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
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
                  Image.asset('assets/images/c5.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UX Research",
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
                          Stack(
                            children: [
                              Container(
                                height: 7,
                                width: screenwidth / 2.2,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                              Container(
                                height: 7,
                                width: (completed[1] / total) * (screenwidth / 2.2),
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8,),
                          Text('${completed[1]}/$total',style: const TextStyle(fontSize: 12),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
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
                  Image.asset('assets/images/c2.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UI/UX Development",
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
                          Stack(
                            children: [
                              Container(
                                height: 7,
                                width: screenwidth / 2.2,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                              Container(
                                height: 7,
                                width: (completed[2] / total) * (screenwidth / 2.2),
                                decoration: BoxDecoration(
                                  color:Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8,),
                          Text('${completed[2]}/$total',style: const TextStyle(fontSize: 12),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
