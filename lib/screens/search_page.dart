import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/home_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final bool isMobile = screenSize.width < 600 && screenSize.height > screenSize.width;

    double searchBarWidth = screenSize.width * 0.7;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
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
          child: const Icon(Icons.arrow_back),
        ),
        actions: [
          const SizedBox(width: 60),
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
              fixedSize: Size(searchBarWidth, 48), 
            ),
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
          const Spacer(),
        ],
      ),
      body: isMobile
          ? _buildMobileLayout()
          : LayoutBuilder(
              builder: (context, constraints) {
                final isScrollable = constraints.maxHeight < 800 || constraints.maxWidth < 600;
                return isScrollable
                    ? SingleChildScrollView(
                        child: _buildDesktopLayout(),
                      )
                    : _buildDesktopLayout();
              },
            ),
    );
  }

  // Mobile layout
  Widget _buildMobileLayout() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //const SizedBox(height: 140),
          SizedBox(
            width: 235,
            height: 176,
            child: Image.asset('assets/images/gif4.gif'),
          ),
          const SizedBox(height: 20),
          Text(
            'Not Found',
            style: GoogleFonts.nunito(
              color: const Color(0xFF260446),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Sorry. The keyword you entered cannot be found. \nPlease check again or search with another \nkeyword.',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              color: const Color(0xFF8B8B8B),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  // Desktop layout
  Widget _buildDesktopLayout() {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 140),
          SizedBox(
            width: 235,
            height: 176,
            child: Image.asset('assets/images/gif4.gif'),
          ),
          const SizedBox(height: 20),
          Text(
            'Not Found',
            style: GoogleFonts.nunito(
              color: const Color(0xFF260446),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Sorry. The keyword you entered cannot be found. \nPlease check again or search with another \nkeyword.',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              color: const Color(0xFF8B8B8B),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
