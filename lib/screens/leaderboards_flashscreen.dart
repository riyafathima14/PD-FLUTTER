import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:pd/home_page.dart';
import 'package:pd/screens/toplearners_screen.dart';

class LeaderboardsFlashscreen extends StatelessWidget {
  const LeaderboardsFlashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final bool isMobile = screenSize.width < 600;

    double dynamicPadding(double mobilePadding, double desktopPadding) {
      return isMobile ? mobilePadding : desktopPadding;
    }

    double dynamicFontSize(double mobileFontSize, double desktopFontSize) {
      return isMobile ? mobileFontSize : desktopFontSize;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 200), // Top Spacer
            SizedBox(
              height: dynamicPadding(
                  100, 200), // Adjust height for images based on device
              child: Image.asset('assets/images/gif2.gif'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: dynamicPadding(42.0, 80)),
              child: Image.asset('assets/images/shareinfo_leaderboards.png'),
            ),
            
            const SizedBox(height: 15),
            Center(
              child: Text(
                'Start Learning and Start Earning from \n Your Leaderboards',
                style: GoogleFonts.nunito(
                  fontSize: dynamicFontSize(17, 24),
                  color: const Color(0xFF414ECA),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Unlock and Start Today ',
                    style: GoogleFonts.nunito(
                      fontSize: dynamicFontSize(15, 20),
                      color: const Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(width: 5),
                  Image.asset('assets/images/unlock.png',
                      width: dynamicPadding(20, 30)), // Adjust size
                ],
              ),
            ),

            const Spacer(),
            SizedBox(
              height: 50,
              width: dynamicPadding(297, 400), // Adjust width for button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ToplearnersScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF414ECA),
                ),
                child: Text(
                  'Explore Leaderboards',
                  style: GoogleFonts.nunito(
                    fontSize: dynamicFontSize(15, 20),
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
