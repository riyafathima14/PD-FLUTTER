import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/enroll_screen12.dart';

class EnrollScreen11 extends StatefulWidget {
  const EnrollScreen11({super.key});

  @override
  State<EnrollScreen11> createState() => _EnrollScreen11State();
}

class _EnrollScreen11State extends State<EnrollScreen11> {
  @override
  void initState() {
    super.initState();
   
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const EnrollScreen12()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screewidth = MediaQuery.of(context).size.width;
    double screeheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: screewidth / 17, right: screeheight / 17),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: screeheight / 3,
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/gif5.gif'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Redirecting to \n Payment Gateway",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA)),
              ),
              const Spacer(),
              Text(
                "Please Don’t Click\nRefresh or Back Button",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF8b8b8b)),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
