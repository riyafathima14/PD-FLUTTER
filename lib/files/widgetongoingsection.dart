import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/uiuxdesigningadvancedscreen.dart';

class Widgetongoingsection {
  static Widget ongoingSection(double screenwidth, BuildContext context) {
    int total = 15;
    List<int> completed = [10, 5, 2];

    return Padding(
      padding: const EdgeInsets.all(8.0), 
      child: Column(
        children: [
          const SizedBox(height: 10),
          ...List.generate(completed.length, (index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const UIUXDesigningAdvancedScreen()));
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
                          Image.asset(
                            'assets/images/c${index + 1}.png',
                            width: 60, 
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 5),
                          Expanded( 
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  index == 0
                                      ? "UIUX Designing Advanced"
                                      : index == 1
                                          ? "UX Research"
                                          : "UI/UX Development",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.nunito(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF3A0070),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "90 hrs 35 mins",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.nunito(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFF8B8B8B),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 7,
                                          width: screenwidth / 2.2, // Keep width dynamic
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFD9D9D9),
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                        ),
                                        Container(
                                          height: 7,
                                          width: (completed[index] / total) * (screenwidth / 2.2),
                                          decoration: BoxDecoration(
                                            color: index == 0
                                                ? Colors.red
                                                : index == 1
                                                    ? Colors.yellow
                                                    : Colors.green,
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      '${completed[index]}/$total',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15), 
              ],
            );
          }),
          const SizedBox(height: 15), 
        ],
      ),
    );
  }
}
