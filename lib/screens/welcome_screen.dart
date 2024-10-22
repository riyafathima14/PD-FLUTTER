import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/home_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final bool isMobile = screenWidth < 600 && screenSize.height > screenWidth;
    final bool isSmallMobile = screenWidth < 350; // Adjust for very small screens
    final bool isDesktop = screenWidth >= 1200;
    final bool isTablet = screenWidth >= 600 && screenWidth < 1200;

    double topSpacer = isDesktop
        ? screenSize.height * 0.05
        : isTablet
            ? screenSize.height * 0.10
            : screenSize.height * 0.20;

    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isScrollable = constraints.maxHeight < 700 || constraints.maxWidth < 600;

          return isMobile
              ? _buildMobileLayout(context, topSpacer, isSmallMobile)
              : isScrollable
                  ? SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(minHeight: constraints.maxHeight),
                        child: _buildDesktopLayout(context, topSpacer, isScrollable),
                      ),
                    )
                  : _buildDesktopLayout(context, topSpacer, isScrollable);
        },
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context, double topSpacer, bool isSmallMobile) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: topSpacer),
            SizedBox(
              width: isSmallMobile ? 200 : 250, // Scale down image for smaller screens
              child: Image.asset('assets/images/gif1.gif'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset('assets/images/SHareInfo Learnspace.png'),
            ),
            const SizedBox(height: 10),
            FittedBox(
              child: Text(
                'Search, Find & Learn!',
                style: GoogleFonts.nunito(
                  fontSize: 22, // Fixed font size to ensure visibility
                  color: const Color(0xFF260446),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: _buildRichText(isMobile: true, isSmallMobile: isSmallMobile),
              ),
            ),
            const SizedBox(height: 30),
            _buildRichTextSecondary(isMobile: true, isSmallMobile: isSmallMobile),
            const SizedBox(height: 10),
            _buildExploreButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context, double topSpacer, bool isScrollable) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: topSpacer),
            SizedBox(
              width: 400,
              child: Image.asset('assets/images/gif1.gif'),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset('assets/images/SHareInfo Learnspace.png'),
            ),
            const SizedBox(height: 10),
            FittedBox(
              child: Text(
                'Search, Find & Learn!',
                style: GoogleFonts.nunito(
                  fontSize: 28, // Fixed font size for desktop
                  color: const Color(0xFF260446),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: _buildRichText(),
            ),
            const SizedBox(height: 20),
            _buildRichTextSecondary(),
            const SizedBox(height: 8),
            _buildExploreButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildRichText({bool isMobile = false, bool isSmallMobile = false}) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'ShareInfo',
            style: GoogleFonts.nunito(
              fontSize: isSmallMobile ? 11 : isMobile ? 13 : 16,
              color: const Color(0xFFEE5602),
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: "'s ",
            style: GoogleFonts.nunito(
              fontSize: isSmallMobile ? 10 : isMobile ? 12 : 15,
              color: const Color(0xFF260446),
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: 'Search, Find & Learn ',
            style: GoogleFonts.nunito(
              fontSize: isSmallMobile ? 11 : isMobile ? 13 : 16,
              color: const Color(0xFFEE5602),
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: "will help you to find and connect with ",
            style: GoogleFonts.nunito(
              fontSize: isSmallMobile ? 10 : isMobile ? 12 : 15,
              color: const Color(0xFF260446),
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: 'mentors.',
            style: GoogleFonts.nunito(
              fontSize: isSmallMobile ? 11 : isMobile ? 13 : 16,
              color: const Color(0xFFEE5602),
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text:
                ' Browse content, discover experts, and swipe to initiate connections.',
            style: GoogleFonts.nunito(
              fontSize: isSmallMobile ? 10 : isMobile ? 12 : 15,
              color: const Color(0xFF260446),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRichTextSecondary({bool isMobile = false, bool isSmallMobile = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Let’s begin the Next Era of ',
              style: GoogleFonts.nunito(
                fontSize: isSmallMobile ? 11 : isMobile ? 13 : 15,
                color: const Color(0xFF8B8B8B),
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: 'Collaborative Learning!',
              style: GoogleFonts.nunito(
                fontSize: isSmallMobile ? 11 : isMobile ? 13 : 15,
                color: const Color(0xFF8B8B8B),
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExploreButton(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const HomePage(),
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
          'Explore Courses!',
          style: GoogleFonts.nunito(
            fontSize: 14,
            color: const Color(0xFFFFFFFF),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
