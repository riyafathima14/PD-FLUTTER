import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/home_page.dart';

class AssessmentScreen4 extends StatelessWidget {
  const AssessmentScreen4({super.key});
  @override
  Widget build(BuildContext context) {
     //double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: screenheight/4,),
            Image.asset('assets/images/gif8.gif'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Success !',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF000000),
              ),
            ),
            const SizedBox(height: 20,),
            Text('Check Leaderboard For the Credits and Results.',style: GoogleFonts.nunito(
              color: const Color(0xFF8b8b8b),fontSize: 12,
            ),),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                 Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF414ECA),
                fixedSize: const Size(300, 47),
              ),
              child: Text(
                'Go to Assessments Home !',
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFFFFFFF)),
              ),
            ),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
