import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_txt/gradient_text.dart';
import 'package:pd/screens/assessment_screen3.dart';

class AssessmentScreen2 extends StatelessWidget {
  const AssessmentScreen2({super.key});
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
   double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only( left: screenwidth/17,right: screenwidth/17),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenheight / 2.5,),
            Padding(
              padding: EdgeInsets.only(left: screenwidth/6.8),
              child: Text(
                'Welcome to Your',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFF9772E),
                ),
               
              ),
            ),
            Center(
              child: GradientText(
                text: 'UI Fundamentals',
                style: GoogleFonts.nunito(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFDA4ED5),
                    Color(0xFFFF3288),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenwidth/2.22),
              child: Text(
                'Assessment',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFF9772E),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                   Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const AssessmentScreen(),
                  ),
                );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF414ECA),
                  fixedSize: const Size(300, 47),
                ),
                child: Text(
                  'Start Now',
                  style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFFFFFFFF)),
                ),
              ),
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
