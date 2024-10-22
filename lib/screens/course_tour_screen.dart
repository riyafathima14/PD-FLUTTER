import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/module_video_screen.dart';

class CourseTourScreen extends StatelessWidget {
  const CourseTourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            bool isDesktop = constraints.maxWidth >= 800;

            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isDesktop ? screenWidth / 10 : screenWidth / 17,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                  isDesktop?Container(
                    width: double.infinity,
                    height: 620, 
                    decoration:const  BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Thumbnail.png'),
                        fit: BoxFit.cover, 
                      ),
                    ),
                  ):SizedBox(
                    width: screenWidth,
                    child: Image.asset(
                      'assets/images/Thumbnail.png',
                      width: screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'CEO’s Message; Premium Courses only in ShareInfo for Aspirants',
                    style: GoogleFonts.nunito(
                      fontSize: isDesktop ? 24 : 18,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF3A0070),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "ShareInfo Courses are designed for anyone who wants to improve their ability to communicate and share information clearly, concisely, and engagingly. Whether you're a student, professional, or entrepreneur, effective communication is essential for success. Our courses will equip you with the skills and knowledge you need to:",
                    style: GoogleFonts.nunito(
                      color: const Color(0xFF3A0070),
                      fontSize: isDesktop ? 16 : 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        buildListItem(
                          text:
                              'Structure your message for maximum impact: Learn how to organize your thoughts and present information in a way that is easy for your audience to understand and remember.',
                          isDesktop: isDesktop,
                        ),
                        const SizedBox(height: 8),
                        buildListItem(
                          text:
                              'Craft compelling content: Discover techniques for creating presentations, reports, emails, and other forms of communication that are informative and engaging.',
                          isDesktop: isDesktop,
                        ),
                        const SizedBox(height: 8),
                        buildListItem(
                          text:
                              'Deliver your message with confidence: Develop your public speaking skills and learn how to overcome stage fright so you can present with clarity and conviction.',
                          isDesktop: isDesktop,
                        ),
                        const SizedBox(height: 8),
                        buildListItem(
                          text:
                              'Adapt your communication style to different audiences: Gain the ability to tailor your message to fit the needs and interests of your listeners or readers.',
                          isDesktop: isDesktop,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Who can benefit from ShareInfo Courses?",
                    style: GoogleFonts.nunito(
                      color: const Color(0xFF3A0070),
                      fontSize: isDesktop ? 16 : 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        buildListItem(
                          text:
                              'Students: Learn how to communicate effectively in presentations, essays, and group projects',
                          isDesktop: isDesktop,
                        ),
                        const SizedBox(height: 8),
                        buildListItem(
                          text:
                              'Professionals: Enhance your ability to give clear and concise presentations, write persuasive emails, and participate in meetings confidently.',
                          isDesktop: isDesktop,
                        ),
                        const SizedBox(height: 8),
                        buildListItem(
                          text:
                              'Entrepreneurs: Develop the communication skills necessary to pitch your ideas, market your products or services, and build strong relationships with clients and investors.',
                          isDesktop: isDesktop,
                        ),
                        const SizedBox(height: 8),
                        buildListItem(
                          text:
                              'Anyone who wants to improve their communication skills: Our courses are beneficial for anyone who wants to be a more effective communicator in any situation.',
                          isDesktop: isDesktop,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => ModuleVideoScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF414ECA),
                        fixedSize: Size(screenWidth, 50),
                      ),
                      child: Text(
                        'Start Learning',
                        style: GoogleFonts.nunito(
                          fontSize: isDesktop ? 20 : 18,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildListItem({required String text, required bool isDesktop}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "•",
          style: TextStyle(
            color: Color(0xFF3A0070),
            fontSize: 14,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.nunito(
              fontSize: isDesktop ? 16 : 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF3A0070),
            ),
          ),
        ),
      ],
    );
  }
}
