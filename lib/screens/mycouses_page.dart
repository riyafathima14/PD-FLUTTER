import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/widgetCompletedSection.dart';
import 'package:pd/files/widgetongoingsection.dart';
import 'package:pd/screens/home_page.dart';
import 'package:pd/screens/search_page.dart';

class MyCousesPage extends StatefulWidget {
  const MyCousesPage({super.key});

  @override
  State<MyCousesPage> createState() => _MyCousesPageState();
}

class _MyCousesPageState extends State<MyCousesPage> {
  int selectedSection = 0;
  @override
  Widget build(BuildContext context) {
    double screewidth = MediaQuery.of(context).size.width;
    //double screeheight = MediaQuery.of(context).size.height;
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
            child: const Icon(Icons.arrow_back)),
        actions: [
          const SizedBox(
            width: 50,
          ),
          Text(
            'My Courses',
            style: GoogleFonts.nunito(
                color: const Color(0xFF260446),
                fontSize: 14,
                fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
              );
            },
            child: Image.asset('assets/images/action_key.png'),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: screewidth / 17, right: screewidth / 17),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screewidth / 17, right: screewidth / 17),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          selectedSection = 0;
                        });
                      },
                      child: Text(
                        "Ongoing",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: selectedSection == 0
                              ? const Color(0xFF414ECA)
                              : const Color(0xFF8B8B8B),
                        ),
                      )),
                  SizedBox(
                    width: screewidth / 3,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          selectedSection = 1;
                        });
                      },
                      child: Text(
                        "Completed",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: selectedSection == 1
                              ? const Color(0xFF414ECA)
                              : const Color(0xFF8B8B8B),
                        ),
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: selectedSection == 0 ? 3 : 2,
                  width: screewidth / 2.27,
                  color: selectedSection == 0
                      ? const Color(0xFF414ECA)
                      : const Color(0xFF8B8B8B),
                ),
                Container(
                  height: selectedSection == 1 ? 3 : 2,
                  width: screewidth / 2.27,
                  color: selectedSection == 1
                      ? const Color(0xFF414ECA)
                      : const Color(0xFF8B8B8B),
                ),
              ],
            ),
            if (selectedSection == 0)
              Widgetongoingsection.ongoingSection(screewidth,context),
            if (selectedSection == 1)
              WidgetCompletedSection.completedSection(screewidth,context),
          ],
        ),
      ),
    );
  }
}
