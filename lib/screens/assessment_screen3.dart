import 'dart:async'; // Import the dart async library for Timer
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/assessment_questions.dart';
import 'package:pd/screens/assessment_screen4.dart';

class AssessmentScreen extends StatefulWidget {
  const AssessmentScreen({super.key});

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  int currentQuestionIndex = 0;
  Timer? _timer; 
  int _timeRemaining = 59;

  @override
  void initState() {
    super.initState();
    startTimer(); 
  }

  @override
  void dispose() {
    _timer?.cancel(); 
    super.dispose();
  }

  void startTimer() {
    
    _timer?.cancel(); 
    setState(() {
      _timeRemaining = 59; 
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeRemaining > 0) {
          _timeRemaining--; 
        } else {
          nextQuestion(); 
        }
      });
    });
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < assessment.length - 1) {
        currentQuestionIndex++;
        startTimer(); 
      } else {
        submitAssessment(); 
      }
    });
  }

  void submitAssessment() {
    _timer?.cancel();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Are You Sure Want to Complete this Test',
            style: GoogleFonts.nunito(
                fontSize: MediaQuery.of(context).size.width < 600 ? 13 : 18,
                fontWeight: FontWeight.w700,
                color: const Color(0xff260446)),
            textAlign: TextAlign.center,
          ),
          actions: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width < 600
                          ? MediaQuery.of(context).size.width * 0.25
                          : MediaQuery.of(context).size.width * 0.10,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffF31919)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'No',
                        style: GoogleFonts.nunito(
                          color: const Color(0xffF31919),
                        ),
                        textAlign: TextAlign.center,
                      )),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                   Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const AssessmentScreen4(),
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
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width < 600
                          ? MediaQuery.of(context).size.width * 0.25
                          : MediaQuery.of(context).size.width * 0.10,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xff34A853)),
                          color: const Color(0xff34A853),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'CONFIRM',
                        style: GoogleFonts.nunito(
                          color: const Color(0xffffffff),
                        ),
                        textAlign: TextAlign.center,
                      )),
                ),
              ],
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final bool isMobile = screenSize.width < 600; 
    final currentQuestion = assessment[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          const SizedBox(width: 5),
          Image.asset('assets/images/assessment.png',
              height: isMobile ? screenSize.height * 0.04 : screenSize.height * 0.05),
          const Spacer(),
          Text(
            'Quit',
            style: GoogleFonts.nunito(
              color: const Color(0xffF31919),
              fontSize: isMobile ? 12 : 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 5),
          Image.asset('assets/images/move_item.png',
              height: isMobile ? screenSize.height * 0.04 : screenSize.height * 0.05),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 15 : screenSize.width / 17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(screenSize.width * 0.015),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffEE5602)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Q${currentQuestionIndex + 1}",
                    style: GoogleFonts.nunito(color: const Color(0xffEE5602)),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: EdgeInsets.all(screenSize.width * 0.015),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffEE5602)),
                      borderRadius: BorderRadius.circular(7)),
                  child: Text(
                    "00:${_timeRemaining.toString().padLeft(2, '0')}", // Display the timer
                    style: GoogleFonts.nunito(color: const Color(0xffEE5602)),
                  ),
                ),
                const Spacer(),
                Container(
                  height: isMobile ? 29 : 39,
                  width: isMobile ? screenSize.width * 0.25 : screenSize.width * 0.20,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffEE5602)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Q${currentQuestionIndex + 1}/${assessment.length}",
                      style: GoogleFonts.nunito(
                          color: const Color(0xff8b8b8b), fontSize: isMobile ? 12 : 15),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: screenSize.width,
              height: isMobile ? 100 : 140,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF2E4FF),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  currentQuestion.question,
                  style: GoogleFonts.nunito(
                    fontSize: isMobile ? 15 : 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: currentQuestion.answers.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                        color: const Color(0xffDFF1FF),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0x808b8b8b), width: 1)),
                    child: Text(
                      currentQuestion.answers[index],
                      style: GoogleFonts.nunito(
                        fontSize: isMobile ? screenSize.width * 0.035 : 20,
                      ),
                    ),
                  );
                },
              ),
            ),
            Text(
              'Skip this Question',
              style: GoogleFonts.nunito(
                fontSize: isMobile ? screenSize.width * 0.03 : screenSize.width * 0.010,
                color: const Color(0xffF31919),
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              'Should Mark one Answer or Skip to Continue',
              style: GoogleFonts.nunito(
                fontSize: isMobile ? screenSize.width * 0.03 : screenSize.width * 0.011,
                color: const Color(0xff8b8b8b),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: nextQuestion,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF414ECA),
                fixedSize: Size(isMobile ? screenSize.width * 0.85 : screenSize.width * 0.8, isMobile ? 47 : 67),
              ),
              child: Text(
                currentQuestionIndex == assessment.length - 1
                    ? 'Submit Assessment'
                    : 'Next Question',
                style: GoogleFonts.nunito(
                  fontSize: isMobile ? screenSize.width * 0.04 : screenSize.width * 0.015,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
