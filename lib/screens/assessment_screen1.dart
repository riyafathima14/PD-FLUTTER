import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/assessment_screen2.dart';

class AssessmentScreen1 extends StatelessWidget {
  const AssessmentScreen1({super.key});

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
             
              const Spacer(),
              
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 
                  SizedBox(
                    height: isMobile ? 150 : 300,
                    child: Image.asset('assets/images/gif7.gif'),
                  ),
                  const SizedBox(height: 20),
              
                  
                  Text(
                    'Module Integrated',
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 16 : 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    'Assessments',
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 24 : 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Instructions to Module Integrated Assessments',
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 14 : 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange[300],
                    ),
                  ),
                  const SizedBox(height: 20),
              
                  Text(
                    'Within a technical domain, AI integration involves incorporating AI techniques like machine learning or computer vision into existing systems. This can create "smart" modules that handle specific tasks. By seamlessly connecting these AI modules with traditional technical components, the overall system gains new capabilities and efficiencies.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 10 : 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              
             
              const Spacer(),
              
             
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => const AssessmentScreen2(),
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
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
