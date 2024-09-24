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
    double screewidth = MediaQuery.of(context).size.width;
    double screeheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: screewidth / 17, right: screeheight / 17),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: screeheight / 3.5,
            ),
            SizedBox(
              height: 200,
              width:250,
              child: Image.asset('assets/images/gif6.gif'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Successfully\nPurchased",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF414ECA)),
            ),
            const SizedBox(height: 10,),
            Text(
                "Start Learning via My Courses",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
              const Spacer(),
              ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF414ECA),
                fixedSize: const Size(300, 47),
              ),
              child: Text(
                'Go to My Courses',
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFFFFFFFF)),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ));
  }
}
