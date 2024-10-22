import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/assessment_screen3.dart';

class AssessmentScreen2 extends StatefulWidget {
  const AssessmentScreen2({super.key});

  @override
  _AssessmentScreen2State createState() => _AssessmentScreen2State();
}

class _AssessmentScreen2State extends State<AssessmentScreen2> with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;

  late Animation<double> _fadeAnimation1;
  late Animation<double> _fadeAnimation2;

  @override
  void initState() {
    super.initState();

    // First text fade-in controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _fadeAnimation1 = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    // Second text fade-in controller
    _controller2 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _fadeAnimation2 = CurvedAnimation(
      parent: _controller2,
      curve: Curves.easeIn,
    );

    // Trigger animations sequentially
    _controller.forward().then((_) {
      _controller2.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final bool isMobile = screenSize.width < 600;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              // Spacer at the top to push the content to the center
              const Spacer(),

              // Center content (Image, and texts)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Assessment Transition.png'),
                  const SizedBox(height: 20),

                  // First text with fade-in animation
                  FadeTransition(
                    opacity: _fadeAnimation1,
                    child: Text(
                      'This assessment is designed to evaluate your understanding of the core principles that make a user interface (UI) effective. Here, you\'ll put your knowledge to the test by applying it to real-world UI scenarios.',
                      style: GoogleFonts.nunito(
                        fontSize: isMobile ? 12 : 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF8B8B8B),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Second text with fade-in animation
                  FadeTransition(
                    opacity: _fadeAnimation2,
                    child: Text(
                      'Start now!',
                      style: GoogleFonts.nunito(
                        fontSize: isMobile ? 14 : 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFF9772E),
                      ),
                    ),
                  ),
                ],
              ),

              // Spacer at the bottom to push the content to the center
              const Spacer(),

              // Button at the bottom
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => const AssessmentScreen(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
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
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  fixedSize: Size(screenSize.width, isMobile ? 47 : 57),
                ),
                child: Text(
                  'Start Now',
                  style: GoogleFonts.nunito(
                    fontSize: isMobile ? 16 : 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
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
