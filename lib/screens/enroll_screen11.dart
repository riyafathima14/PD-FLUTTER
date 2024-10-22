import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/enroll_screen12.dart';

class EnrollScreen11 extends StatefulWidget {
  const EnrollScreen11({super.key});

  @override
  State<EnrollScreen11> createState() => _EnrollScreen11State();
}

class _EnrollScreen11State extends State<EnrollScreen11> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const EnrollScreen12()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isDesktop = screenWidth >= 800;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isDesktop ? screenWidth / 10 : screenWidth / 17,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: isDesktop ? 3 : 2, // Adjusts space above the image based on screen size
              child: Container(),
            ),
            SizedBox(
              height: isDesktop ? screenHeight * 0.3 : screenHeight * 0.2,
              width: isDesktop ? screenWidth * 0.2 : screenWidth * 0.4,
              child: Image.asset('assets/images/gif5.gif'),
            ),
            const SizedBox(height: 10),
            Text(
              "Redirecting to \n Payment Gateway",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontSize: isDesktop ? screenHeight * 0.03 : screenHeight * 0.02,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF414ECA),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Text(
              "Please Don’t Click\nRefresh or Back Button",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontSize: isDesktop ? screenHeight * 0.025 : screenHeight * 0.015,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF8b8b8b),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
