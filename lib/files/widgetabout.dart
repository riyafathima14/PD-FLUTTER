import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/tutor_profile_screen1.dart';

class WidgetAbout {
  static Widget buildAboutSection(double screewidth, BuildContext context) {
    // Determine whether the screen is large (desktop) or small (mobile)
    bool isDesktop = screewidth > 800;

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
                  radius: isDesktop ? 40 : 25, // Adjust avatar size
                  child: Image.asset('assets/images/profile1.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "James Hok",
                      style: GoogleFonts.nunito(
                        fontSize: isDesktop ? 24 : 18, // Responsive text size
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF414ECA),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "UIUX Designer at Google",
                      style: GoogleFonts.nunito(
                        fontSize: isDesktop ? 16 : 13, // Responsive text size
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF8B8B8B),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.mark_chat_unread_outlined,
                    color: Color(0xFF414ECA)),
                SizedBox(width: screewidth / 15),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "About Course",
            style: GoogleFonts.nunito(
              fontSize: isDesktop ? 24 : 18, // Responsive text size
              fontWeight: FontWeight.w700,
              color: const Color(0xFF414ECA),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "This course will equip you with the skills to craft engaging and user-friendly digital experiences. You'll learn the fundamentals of both UX and UI design, from understanding user needs to creating intuitive and visually appealing interfaces.",
            textAlign: TextAlign.start,
            style: GoogleFonts.nunito(
                fontSize: isDesktop ? 18 : 13,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF8B8B8B)),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      "Through a combination of lectures, hands-on exercises, and potential project work, you'll gain experience with the entire design process, including: ewdigashigc saihb ",
                  style: GoogleFonts.nunito(
                    fontSize: isDesktop ? 18 : 13,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B8B8B),
                  ),
                ),
                TextSpan(
                  text: "Read more..!",
                  style: GoogleFonts.nunito(
                    fontSize: isDesktop ? 18 : 13,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF414ECA), // Blue color for Read more
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Tools",
            style: GoogleFonts.nunito(
              fontSize: isDesktop ? 18 : 14, // Responsive text size
              fontWeight: FontWeight.w700,
              color: const Color(0xFF414ECA),
            ),
          ),
          const SizedBox(height: 8),
          _buildToolRow("Figma", "assets/images/figma.png", isDesktop),
          const SizedBox(height: 8),
          _buildToolRow("Micro", "assets/images/micro.png", isDesktop),
          const SizedBox(height: 8),
          _buildToolRow("Notion", "assets/images/notion.png", isDesktop),
        ],
      ),
    );
  }

  static Widget _buildToolRow(
      String toolName, String imageUrl, bool isDesktop) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          height: isDesktop ? 40 : 30,
        ),
        const SizedBox(width: 10),
        Text(
          toolName,
          style: GoogleFonts.nunito(
            fontSize: isDesktop ? 18 : 14,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF8B8B8B),
          ),
        ),
      ],
    );
  }
}
