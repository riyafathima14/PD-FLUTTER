import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For SystemChrome
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/module_video_screen.dart';
import 'package:pd/screens/video_screen.dart';

class VideoLandscapeScreen extends StatefulWidget {
  const VideoLandscapeScreen({super.key});

  @override
  State<VideoLandscapeScreen> createState() => _VideoLandscapeScreenState();
}

class _VideoLandscapeScreenState extends State<VideoLandscapeScreen> {
  double playedMinutes = 5.25; //(5:15)
  double totalMinutes = 15.25;

  @override
  void initState() {
    super.initState();
    // Set to landscape mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  void dispose() {
    // Restore to the default orientation when this screen is closed
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/vdoimg.png',
              width: screenWidth,
              height: screenHeight,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const ModuleVideoScreen()));
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Color(0xff1C1B1F),
                      )),
                  Text(
                    'IA for Complex Systems',
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF1C1B1F),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 12,
              right: 10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "5:15",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: 14,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        Container(
                          height: 14,
                          width: (playedMinutes / totalMinutes) * screenWidth,
                          decoration: BoxDecoration(
                            color: const Color(0xff414eca),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "15:15",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const VideoScreen()));
                    },
                    icon: const Icon(
                      Icons.flip_camera_android,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
