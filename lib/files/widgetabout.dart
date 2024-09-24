import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/tutor_profile_screen1.dart';

class WidgetAbout {
  static Widget buildAboutSection(double screewidth,BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screewidth / 17, right: screewidth / 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const TutorProfileScreen1(),
                ),
              );
            },
            child: Row(
              children: [
                CircleAvatar(
                  child: Image.asset('assets/images/profile1.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "James Hok",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF414ECA)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "UIUX Designer at Google",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF8B8B8B)),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.mark_chat_unread_outlined,
                    color: Color(0xFF414ECA)),
                SizedBox(
                  width: screewidth / 15,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "About Course",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF414ECA)),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "This course will equip you with the skills to craft engaging and user-friendly digital experiences. You'll learn the fundamentals of both UX and UI design, from understanding user needs to creating intuitive and visually appealing interfaces.",
            textAlign: TextAlign.start,
            style: GoogleFonts.nunito(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          Text(
            "Through a combination of lectures, hands-on exercises, and potential project work, you'll gain experience with the entire design process,including: ewdigashigc saihb  ",
            textAlign: TextAlign.start,
            style: GoogleFonts.nunito(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Tools",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF414ECA)),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Image.asset('assets/images/figma.png'),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Figma",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Image.asset('assets/images/micro.png'),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Micro",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Image.asset('assets/images/notion.png'),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Notion",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
