import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/home_page.dart';

class AssessmentScreen4 extends StatelessWidget {
  const AssessmentScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isMobile = screenWidth < 600;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            children: [
              SizedBox(height: screenHeight / (isMobile ? 4 : 6)), 
              Image.asset(
                'assets/images/gif8.gif',
                height: isMobile ? screenHeight * 0.25 : screenHeight * 0.35,
              ),
              const SizedBox(height: 20),
              Text(
                'Success!',
                style: GoogleFonts.nunito(
                  fontSize: isMobile ? 22 : 30,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Check Leaderboard for the Credits and Results.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  color: const Color(0xFF8b8b8b),
                  fontSize: isMobile ? 14 : 18,
                ),
              ),
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
                  fixedSize: Size(
                    screenWidth * 0.8, 
                    isMobile ? 47 : 57, 
                  ),
                ),
                child: Text(
                  'Go to Assessments Home!',
                  style: GoogleFonts.nunito(
                    fontSize: isMobile ? 16 : 20, 
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05), 
            ],
          ),
        ),
      ),
    );
  }
}
