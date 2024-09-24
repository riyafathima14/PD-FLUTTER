import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:pd/home_page.dart';
import 'package:pd/screens/toplearners_screen.dart';

class LeaderboardsFlashscreen extends StatelessWidget {
  const LeaderboardsFlashscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              child: Image.asset('assets/images/gif2.gif'),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 42.0, right: 88),
              child: Image.asset('assets/images/ShareInfo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 45),
              child: Image.asset('assets/images/Leaderboards.png'),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Start Learning and Start Earning from \n Your Leaderboards',
              style: GoogleFonts.nunito(
                fontSize: 17,
                color: const Color(0xFF414ECA),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 110.0),
              child: Row(children: [
                Text(
                'Unlock and Start Today ',
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  color: const Color(0xFF8B8B8B),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(width: 5,),
              Image.asset('assets/images/unlock.png'),
              ],),
            ),
            const SizedBox(height: 110,),
            SizedBox(
              height: 50,
              width: 297,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ToplearnersScreen(),
                    ),
                  );
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xFF414ECA)),
                ),
                child: Text(
                  'Explore Leaderboards',
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
