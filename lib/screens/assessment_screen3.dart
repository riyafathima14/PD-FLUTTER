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

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < assessment.length - 1) {
        currentQuestionIndex++;
      } else {
        submitAssessment();
      }
    });
  }

  void submitAssessment() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Are You Sure Want to Complete this Test',
            style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color(0xff260446)),
            textAlign: TextAlign.center,
          ),
          actions: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){Navigator.pop(context);},
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 110,
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
               // const SizedBox(width: 8,),
                const Spacer(),
                 GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const AssessmentScreen4(),
                ),
              );
                  },
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 110,
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
    double screenwidth = MediaQuery.of(context).size.width;
    final currentQuestion = assessment[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          const SizedBox(
            width: 5,
          ),
          Image.asset('assets/images/assessment.png'),
          const Spacer(),
          Text(
            'Quit',
            style: GoogleFonts.nunito(
                color: const Color(0xffF31919),
                fontSize: 10,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            width: 5,
          ),
          Image.asset('assets/images/move_item.png'),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: screenwidth / 17, right: screenwidth / 17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffEE5602)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Q1",
                    style: GoogleFonts.nunito(color: const Color(0xffEE5602)),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffEE5602)),
                      borderRadius: BorderRadius.circular(7)),
                  child: Text(
                    "00:59",
                    style: GoogleFonts.nunito(color: const Color(0xffEE5602)),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 105,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffEE5602)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Q1/",
                        style:
                            GoogleFonts.nunito(color: const Color(0xff8b8b8b)),
                      ),
                      Text(
                        "25",
                        style:
                            GoogleFonts.nunito(color: const Color(0xff414eca)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: screenwidth,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xFFF2E4FF),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                currentQuestion.question,
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
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
                        border: Border.all(color: Color(0x808b8b8b), width: 1)),
                    child: Text(
                      currentQuestion.answers[index],
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                      ),
                    ),
                  );
                },
              ),
            ),
            Text(
              'Skip this Question',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: const Color(0xffF31919),
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              'Should Mark one Answer or Skip to Continue',
              style: GoogleFonts.nunito(
                fontSize: 12,
                color: const Color(0xff8b8b8b),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: nextQuestion,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF414ECA),
                fixedSize: const Size(300, 47),
              ),
              child: Text(
                currentQuestionIndex == assessment.length - 1
                    ? 'Submit Assessment'
                    : 'Next Question',
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFFFFFFF)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
