import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/home_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          child: const Icon(Icons.arrow_back),
        ),
        actions: [
          const SizedBox(
            width: 60,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: const Color.fromARGB(173, 217, 217, 217),
                side: const BorderSide(
                  width: 2.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                fixedSize: const Size(279, 48)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.search),
                const SizedBox(width: 10),
                Text(
                  'Search your course here',
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(138, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          const Spacer()
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 140,
            ),
            SizedBox(
              width: 235,
              height: 176,
              child: Image.asset('assets/images/gif4.gif'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Not Found',
              style: GoogleFonts.nunito(
                  color: const Color(0xFF260446),
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              'Sorry. the keyword you entered cannot be found. \nplease check again or search with another \nkeyword.',
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                  color: const Color(0xFF8B8B8B),
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
