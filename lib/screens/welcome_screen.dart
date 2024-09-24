import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/home_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 140,
            ),
            SizedBox(child: Image.asset('assets/images/gif1.gif')),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset('assets/images/SHareInfo Learnspace.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Search, Find & Learn !',
              style: GoogleFonts.nunito(
                fontSize: 22,
                color: const Color(0xFF260446),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  Text(
                    'ShareInfo',
                    style: GoogleFonts.nunito(
                      fontSize: 13,
                      color: const Color(0xFFEE5602),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "'s",
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: const Color(0xFF260446),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    ' Search, Find & Learn ',
                    style: GoogleFonts.nunito(
                      fontSize: 13,
                      color: const Color(0xFFEE5602),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    " will helps you to find and",
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: const Color(0xFF260446),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  Text(
                    "connect with ",
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: const Color(0xFF260446),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    ' mentors',
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: const Color(0xFFEE5602),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    ". Browse content, discover experts, and",
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: const Color(0xFF260446),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "swipe to initiate connections. Learn from relevant information and",
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: const Color(0xFF260446),
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "experienced individuals in your field.",
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: const Color(0xFF260446),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Row(
                children: [
                  Text(
                    'Let’s begin the Next Era of ',
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 106, 106, 106),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    ' Collaborative Learning!',
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: const Color(0xFF8B8B8B),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 297,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xFF414ECA)),
                ),
                child: Text(
                  'Explore Courses !',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    color: const Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
