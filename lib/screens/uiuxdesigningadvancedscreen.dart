import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/files/course.dart';
import 'package:pd/files/widgetlessons.dart';
import 'package:pd/screens/mycouses_page.dart';
import 'package:pd/screens/uiuxscreen2.dart';

class UIUXDesigningAdvancedScreen extends StatefulWidget {
  const UIUXDesigningAdvancedScreen({super.key});
  @override
  State<UIUXDesigningAdvancedScreen> createState() =>
      _UIUXDesigningAdvancedScreenState();
}

class _UIUXDesigningAdvancedScreenState
    extends State<UIUXDesigningAdvancedScreen> {
  Course course = Course(
      title: "UIUX Designing - Advanced",
      category: "Designs",
      imageUrl: "assets/images/c1.png",
      rate: 5999,
      orgRate: 10999,
      rating: 4.5,
      enrolledAspirants: 1356);
  @override
  Widget build(BuildContext context) {
    double screewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: 308,
                    width: screewidth,
                    child: Image.asset('assets/images/Icon1.png')),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10),
                  child: CircleAvatar(
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const MyCousesPage()));
                        },
                        icon: const Icon(Icons.arrow_back)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: screewidth / 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    course.title,
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF414ECA),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 238, 234, 234),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        height: 18,
                        width: 75,
                        child: Text(
                          course.category,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF414ECA)),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(
                        Icons.star_half,
                        color: Color(0xffE6C100),
                        size: 12,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        '${course.rating}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF8B8B8B),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "${course.enrolledAspirants}",
                        style: GoogleFonts.nunito(
                            color: const Color(0xFF8B8B8B),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        " Aspirants",
                        style: GoogleFonts.nunito(
                            color: const Color(0xFF8B8B8B),
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Owned",
                        style: GoogleFonts.nunito(
                          color: const Color(0xFF414ECA),
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text("License till 2025 Dec 31",
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF8B8B8B),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screewidth / 17, right: screewidth / 17),
              child: Row(
                children: [
                  Image.asset('assets/images/Icon3.png'),
                  Text(
                    "${course.enrolledAspirants}",
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF8B8B8B),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    " Co-Aspirants",
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF8B8B8B),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: screewidth / 13,
                  ),
                  const Icon(Icons.av_timer, color: Color(0xFF414ECA)),
                  Text(
                    " 90 Hours",
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF8B8B8B),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: screewidth / 13,
                  ),
                  const Icon(Icons.workspace_premium, color: Color(0xFF414ECA)),
                  Text(
                    " Certified",
                    style: GoogleFonts.nunito(
                        color: const Color(0xFF8B8B8B),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(
            height: 8,
          ),
          Padding(
             padding: EdgeInsets.only(
                  left: screewidth / 17, right: screewidth / 17),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Tools will Covered",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color:  const Color(0xFF414ECA)),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Image.asset('assets/images/figma.png'),
                    SizedBox(width: screewidth / 23,),
                    Image.asset('assets/images/micro.png'),
                    SizedBox(width: screewidth / 23,),
                    Image.asset('assets/images/Jira.png'),
                   SizedBox(width: screewidth / 23,),
                    Image.asset('assets/images/sketch.png'),
                   SizedBox(width: screewidth / 23,),
                    Image.asset('assets/images/an.png'),
                    SizedBox(width: screewidth / 23,),
                     Image.asset('assets/images/adobexd.png'),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          GestureDetector(
             onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const UiUxScreen2()));
            },
            child: Column(
              children: [
                Widgetlessons.buildLessonsSection(screewidth,context),
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
