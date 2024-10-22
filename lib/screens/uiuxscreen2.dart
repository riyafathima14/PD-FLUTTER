import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/widgetlessons.dart';
import 'package:pd/screens/mycouses_page.dart';

class UiUxScreen2 extends StatefulWidget{
  const UiUxScreen2({super.key});

  @override
  State<UiUxScreen2> createState() => _UiUxScreen2State();
}

class _UiUxScreen2State extends State<UiUxScreen2> {
  @override
  Widget build(BuildContext context) {
    double screewidth = MediaQuery.of(context).size.width;
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
            'UIUX Designing -Advanced',
            style: GoogleFonts.nunito(
                color: const Color(0xFF260446),
                fontSize: 14,
                fontWeight: FontWeight.w700),
          ),
          const Spacer()
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          WidgetLessons.buildLessonsSection(screewidth,context),
        ],),
      ),
   );
  }
}