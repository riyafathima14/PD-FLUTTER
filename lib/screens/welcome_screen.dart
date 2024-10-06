import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/home_page.dart';
import 'package:pd/screens/test_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final bool isDesktop = MediaQuery.of(context).size.width > 800;

    double topSpacer = isDesktop ? screenHeight * 0.1 : screenHeight * 0.30;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: isDesktop ? 50 : 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: topSpacer),
              SizedBox(
                width: isDesktop ? 400 : 250,
                child: Image.asset('assets/images/gif1.gif'),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.asset('assets/images/SHareInfo Learnspace.png'),
              ),
              const SizedBox(height: 10),
              Text(
                'Search, Find & Learn !',
                style: GoogleFonts.nunito(
                  fontSize: isDesktop ? 28 : 22,
                  color: const Color(0xFF260446),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'ShareInfo',
                          style: GoogleFonts.nunito(
                            fontSize: isDesktop ? 16 : 13,
                            color: const Color(0xFFEE5602),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: "'s ",
                          style: GoogleFonts.nunito(
                            fontSize: isDesktop ? 15 : 12,
                            color: const Color(0xFF260446),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Search, Find & Learn ',
                          style: GoogleFonts.nunito(
                            fontSize: isDesktop ? 16 : 13,
                            color: const Color(0xFFEE5602),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: "will help you to find and connect with ",
                          style: GoogleFonts.nunito(
                            fontSize: isDesktop ? 15 : 12,
                            color: const Color(0xFF260446),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'mentors. ',
                          style: GoogleFonts.nunito(
                            fontSize: isDesktop ? 15 : 13,
                            color: const Color(0xFFEE5602),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Browse content, discover experts, and swipe to initiate connections. Learn from relevant information and experienced individuals in your field.',
                          style: GoogleFonts.nunito(
                            fontSize: isDesktop ? 15 : 12,
                            color: const Color(0xFF260446),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: isDesktop ? 20 : 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Let’s begin the Next Era of ',
                        style: GoogleFonts.nunito(
                          fontSize: isDesktop ? 15 : 12,
                          color: const Color.fromARGB(255, 106, 106, 106),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'Collaborative Learning!',
                        style: GoogleFonts.nunito(
                          fontSize: isDesktop ? 15 : 12,
                          color: const Color(0xFF8B8B8B),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: isDesktop ? 350 : 297,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF414ECA),
                  ),
                  child: Text(
                    'Explore Courses !',
                    style: GoogleFonts.nunito(
                      fontSize: isDesktop ? 18 : 15,
                      color: const Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
