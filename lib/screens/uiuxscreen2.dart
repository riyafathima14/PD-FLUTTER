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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyCousesPage(),
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
          Widgetlessons.buildLessonsSection(screewidth,context),
        ],),
      ),
   );
  }
}