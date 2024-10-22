import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/mycouses_page.dart';
import 'package:pd/files/widget3dlessons.dart';

class DesignScreen extends StatefulWidget {
  const DesignScreen({super.key});

  @override
  State<DesignScreen> createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  int selectedSection = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screewidth = MediaQuery.of(context).size.width;
        bool isDesktop = constraints.maxWidth > 900;

        return Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const MyCoursesPage(),
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
                child: const Icon(Icons.arrow_back)),
            actions: [
              const SizedBox(
                width: 50,
              ),
              Text(
                '3D Design Illustration',
                style: GoogleFonts.nunito(
                    color: const Color(0xFF260446),
                    fontSize: isDesktop ? 24 : 14, // Adjust font size
                    fontWeight: FontWeight.w700),
              ),
              const Spacer(),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isDesktop ? screewidth / 10 : screewidth / 17,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screewidth / (isDesktop ? 17 : 10),
                    ),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              selectedSection = 0;
                            });
                          },
                          child: Text(
                            "Lessons",
                            style: GoogleFonts.nunito(
                              fontSize: isDesktop
                                  ? 18
                                  : 14, // Responsive tab font size
                              fontWeight: FontWeight.w700,
                              color: selectedSection == 0
                                  ? const Color(0xFF414ECA)
                                  : const Color(0xFF8B8B8B),
                            ),
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              selectedSection = 1;
                            });
                          },
                          child: Text(
                            "Completed",
                            style: GoogleFonts.nunito(
                              fontSize: isDesktop ? 18 : 14,
                              fontWeight: FontWeight.w700,
                              color: selectedSection == 1
                                  ? const Color(0xFF414ECA)
                                  : const Color(0xFF8B8B8B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: selectedSection == 0 ? 3 : 2,
                          color: selectedSection == 0
                              ? const Color(0xFF414ECA)
                              : const Color(0xFF8B8B8B),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: selectedSection == 1 ? 3 : 2,
                          color: selectedSection == 1
                              ? const Color(0xFF414ECA)
                              : const Color(0xFF8B8B8B),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  if (selectedSection == 0)
                    Widget3dlessons.build3dlessons(screewidth, context),
                  if (selectedSection == 1)
                    _buildcertificatesection(screewidth, isDesktop),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget _buildcertificatesection(double screenwidth, bool isDesktop) {
  return Padding(
    padding: const EdgeInsets.all(0.1),
    child: Center(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: isDesktop ? 600 : 556,
            decoration: BoxDecoration(
                color: const Color(0xFF3A0070),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('assets/images/certificate.png'),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF414ECA),
              fixedSize: Size(isDesktop ? 350 : 300, 47), // Adjust size
            ),
            child: Text(
              'Download Now !',
              style: GoogleFonts.nunito(
                fontSize: isDesktop ? 22 : 18, // Adjust font size
                fontWeight: FontWeight.w700,
                color: const Color(0xFFFFFFFF),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ),
  );
}
