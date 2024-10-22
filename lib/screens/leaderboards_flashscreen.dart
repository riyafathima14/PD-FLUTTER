import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:pd/home_page.dart';
import 'package:pd/screens/toplearners_screen.dart';

class LeaderboardsFlashscreen extends StatelessWidget {
  const LeaderboardsFlashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final bool isMobile = screenSize.width < 600 && screenSize.height > screenSize.width;
    final bool isDesktop = !isMobile;  

    double dynamicPadding(double mobilePadding, double desktopPadding) {
      return isMobile ? mobilePadding : desktopPadding;
    }

    double dynamicFontSize(double mobileFontSize, double desktopFontSize) {
      return isMobile ? mobileFontSize : desktopFontSize;
    }

    double dynamicHeight(double mobileHeight, double desktopHeight) {
      return isMobile ? mobileHeight : desktopHeight;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: isMobile
          ? Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: dynamicHeight(200, 300),
                        child: Image.asset('assets/images/gif2.gif'),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: dynamicPadding(42.0, 80)),
                        child: Image.asset(
                            'assets/images/shareinfo_leaderboards.png'),
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
                                width: dynamicPadding(20, 30)), 
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: dynamicPadding(42.0, 80)),
                    child: SizedBox(
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
                  ),
                ),
              ],
            )
          : LayoutBuilder(
              builder: (context, constraints) {
                
                final isScrollable = constraints.maxHeight < 800 || constraints.maxWidth < 600;

                return isScrollable
                    ? SingleChildScrollView(
                        child: Center(
                          child: _buildContent(dynamicPadding, dynamicFontSize, dynamicHeight, context, isMobile),
                        ),
                      )
                    : Center(
                        child: _buildContent(dynamicPadding, dynamicFontSize, dynamicHeight, context, isMobile),
                      );
              },
            ),
    );
  }

  Widget _buildContent(
      double Function(double, double) dynamicPadding,
      double Function(double, double) dynamicFontSize,
      double Function(double, double) dynamicHeight,
      BuildContext context,
      bool isMobile) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: dynamicHeight(100, 150)), 
        SizedBox(
          height: dynamicHeight(200, 300), // Adjust image height for different devices
          child: Image.asset('assets/images/gif2.gif'),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: dynamicPadding(42.0, 80)),
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
                  width: dynamicPadding(20, 30)), 
            ],
          ),
        ),
        SizedBox(height: dynamicHeight(50, 100)),
        SizedBox(
          height: 50,
          width: dynamicPadding(297, 400),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const ToplearnersScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                var begin = 0.0;
                var end = 1.0;
                var tween = Tween(begin: begin, end: end);
                var fadeAnimation = animation.drive(tween);
                return FadeTransition(opacity: fadeAnimation, child: child);
              },
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
        const SizedBox(height: 20),
      ],
    );
  }
}
