import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_txt/gradient_text.dart';
import 'package:pd/screens/assessment_screen2.dart';


class AssessmentScreen1 extends StatelessWidget {
  const AssessmentScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: screenwidth / 17, right: screenwidth / 17),
        child: Column(
          children: [
            SizedBox(
              height: screenheight / 5,
            ),
            Image.asset('assets/images/gif7.gif'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Module Integrated',
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: const Color(0xFFF9772E),
              ),
              textAlign: TextAlign.center, // Center the text
            ),
            Center(
              child: GradientText(
                text: '   Assessments',
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
            const SizedBox(
              height: 10,
            ),
            Text(
              'Instructions to Module Integrated Assessments',
              style: GoogleFonts.nunito(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: const Color(0xFFF9772E),
              ),
              textAlign: TextAlign.center, // Center the text
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Within a technical domain, AI integration involves incorporating AI techniques like machine learning or computer vision into existing systems. This can create "smart" modules that handle specific tasks. By seamlessly connecting these AI modules with traditional technical components, the overall system gains new capabilities and efficiencies.',
              style: GoogleFonts.nunito(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8b8b8b),
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                 Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const AssessmentScreen2(),
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
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
