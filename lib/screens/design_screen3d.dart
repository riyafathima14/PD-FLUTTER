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
            '3D Design Illustration',
            style: GoogleFonts.nunito(
                color: const Color(0xFF260446),
                fontSize: 14,
                fontWeight: FontWeight.w700),
          ),
          const Spacer(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: screewidth / 17, right: screewidth / 17),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                          "Lessons",
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
                          "Certificates",
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
              const SizedBox(
                height: 30,
              ),
              if (selectedSection == 0)
                Widget3dlessons.build3dlessons(screewidth, context),
              if (selectedSection == 1) _buildcertificatesection(screewidth),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildcertificatesection(double screenwidth) {
  return Padding(
    padding: const EdgeInsets.all(0.1),
    child: Center(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 556,
            decoration: BoxDecoration(
                color: const Color(0xFF3A0070),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 20, top: 20),
              child: Image.asset('assets/images/certificate.png'),
            ),
          ),
         const SizedBox(height: 30,),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF414ECA),
              fixedSize: const Size(300, 47),
            ),
            child: Text(
              'Download Now !',
              style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFFFFFFF)),
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
