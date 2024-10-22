import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/home_page.dart';

class EnrollScreen12 extends StatefulWidget {
  const EnrollScreen12({super.key});

  @override
  State<EnrollScreen12> createState() => _EnrollScreen12State();
}

class _EnrollScreen12State extends State<EnrollScreen12> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isDesktop = screenWidth >= 800;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isDesktop ? screenWidth / 8 : screenWidth / 17,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * (isDesktop ? 0.2 : 0.3), 
              ),
              SizedBox(
                height: screenHeight * (isDesktop ? 0.35 : 0.25), 
                width: screenWidth * (isDesktop ? 0.25 : 0.4), 
                child: Image.asset('assets/images/gif6.gif'),
              ),
              const SizedBox(height: 10),
              Text(
                "Successfully\nPurchased",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: screenHeight * (isDesktop ? 0.04 : 0.025), 
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF414ECA),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Start Learning via My Courses",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: isDesktop?20:16, 
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF414ECA),
                ),
              ),
              const Spacer(),
              ElevatedButton(
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
                  fixedSize: Size(screenWidth , 47), 
                ),
                child: Text(
                  'Go to My Courses',
                  style: GoogleFonts.nunito(
                    fontSize: isDesktop ? 18 : 14, 
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
