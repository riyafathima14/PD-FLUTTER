import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/assessment_screen1.dart';
import 'package:pd/screens/uiuxscreen2.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:pd/screens/video_landscape_screen.dart';
import 'package:pd/screens/video_screen.dart';
import 'package:video_player/video_player.dart';

class ModuleVideoScreen extends StatefulWidget {
  const ModuleVideoScreen({super.key});

  @override
  State<ModuleVideoScreen> createState() => _ModuleVideoScreenState();
}

class _ModuleVideoScreenState extends State<ModuleVideoScreen> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();

    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset(
        'images/What Is UX Design.mp4',
      ),
    );

    flickManager.flickVideoManager!.videoPlayerController!
        .initialize()
        .then((_) {
      setState(() {
        flickManager.flickVideoManager!.videoPlayerController!.setVolume(1.0);
      });
    });
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isMobile = screenWidth < 600;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // Video player
                SizedBox(
                  height: isMobile ? screenHeight * 0.3 : screenHeight * 0.8,
                  child: AspectRatio(
                    aspectRatio: isMobile ? 16 / 8.5 : 16 / 6.5,
                    child: FlickVideoPlayer(
                      flickManager: flickManager,
                      flickVideoWithControls: FlickVideoWithControls(
                        controls: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Positioned(
                              top: !isMobile
                                  ? screenHeight * 0.90
                                  : screenHeight * 0.28,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FlickCurrentPosition(
                                    fontSize: isMobile ? 12 : 16,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        FlickVideoProgressBar(
                                          flickProgressBarSettings:
                                              FlickProgressBarSettings(
                                            playedColor:
                                                const Color(0xff414eca),
                                            handleColor: Colors.black,
                                            height: isMobile ? 4 : 6,
                                            backgroundColor: Colors.black,
                                            bufferedColor: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  FlickTotalDuration(
                                    fontSize: isMobile ? 12 : 16,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(width: 8),
                                  FlickSoundToggle(
                                    color: Colors.black,
                                    size: isMobile ? 12 : 15,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation,
                                                  secondaryAnimation) =>
                                              isMobile
                                                  ? const VideoScreen()
                                                  : const VideoLandscapeScreen(),
                                          transitionsBuilder: (context,
                                              animation,
                                              secondaryAnimation,
                                              child) {
                                            var begin = 0.0;
                                            var end = 1.0;
                                            var tween =
                                                Tween(begin: begin, end: end);
                                            var fadeAnimation =
                                                animation.drive(tween);
                                            return FadeTransition(
                                                opacity: fadeAnimation,
                                                child: child);
                                          },
                                        ),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.fullscreen,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: screenHeight * 0.05,
                  left: screenWidth * 0.03,
                  child: CircleAvatar(
                    backgroundColor: const Color(0xffffffff),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const UiUxScreen2(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: isMobile ? 20 : 125),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth / (isMobile ? 17 : 20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deep Dive into UI Research",
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 18 : 24,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF3A0070),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "This course will equip you with the skills to craft engaging and user-friendly digital experiences. You'll learn the fundamentals of both UX and UI design, from understanding user needs to creating intuitive and visually appealing interfaces.",
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 12 : 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF8b8b8b),
                    ),
                  ),
                  const SizedBox(height: 2),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.nunito(
                        fontSize: isMobile ? 12 : 16,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF8b8b8b),
                      ),
                      children: [
                        const TextSpan(
                          text:
                              "Through a combination of lectures, hands-on exercises, and potential project work, you'll gain experience with the entire design process, including: ewdigashigc saihb ",
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              'Read more..! ',
                              style: GoogleFonts.nunito(
                                fontSize: isMobile ? 12 : 16,
                                color: const Color(0xff414eca),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Module Integrated Assessments",
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 14 : 18,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF3A0070),
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildAssessmentCard("01", "UI Concepts",
                      "10 mins to complete", true, isMobile, screenWidth),
                  const SizedBox(height: 8),
                  _buildAssessmentCard("02", "UI Research",
                      "15 mins to complete", false, isMobile, screenWidth),
                  const SizedBox(height: 8),
                  _buildAssessmentCard("03", "UX Fundamentals",
                      "20 mins to complete", false, isMobile, screenWidth),
                  const SizedBox(height: 8),
                  _buildAssessmentCard("04", "UI Processing",
                      "30 mins to complete", false, isMobile, screenWidth),
                  const SizedBox(height: 15),
                  Center(
                    child: Text(
                      '*You have to Submit all Module Integrated\nAssessments to unlock Next module!',
                      style: GoogleFonts.nunito(
                        fontSize: isMobile ? 11 : 13,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff8b8b8b),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAssessmentCard(String number, String title, String duration,
      bool isUnlocked, bool isMobile, double screenWidth) {
    return GestureDetector(
      onTap: () {
        if (title == 'UI Concepts') {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const AssessmentScreen1(),
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
        }
      },
      child: Container(
        constraints: BoxConstraints(
          maxWidth: screenWidth * (isMobile ? 0.9 : 0.8),
        ),
        decoration: BoxDecoration(
          border: Border.all(
              width: 2, color: const Color.fromARGB(255, 220, 216, 216)),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Padding(
          padding: EdgeInsets.all(screenWidth / 40),
          child: Row(
            children: [
              _buildNumberBox(number, isMobile),
              const SizedBox(width: 10),
              Expanded(child: _buildTextContent(title, duration, isMobile)),
              const Spacer(),
              Icon(
                isUnlocked ? Icons.lock_open : Icons.lock,
                color: const Color(0xFF8b8b8b),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNumberBox(String number, bool isMobile) {
    return Container(
      height: isMobile ? 28 : 48,
      width: isMobile ? 28 : 48,
      decoration: BoxDecoration(
        border: Border.all(
            width: 2, color: const Color.fromARGB(255, 220, 216, 216)),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        number,
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: const Color(0xFF414ECA),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildTextContent(String title, String duration, bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.nunito(
            fontSize: isMobile ? 13 : 16,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF000000),
          ),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 2),
        Text(
          duration,
          style: GoogleFonts.nunito(
            fontSize: isMobile ? 11 : 13,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF8B8B8B),
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
