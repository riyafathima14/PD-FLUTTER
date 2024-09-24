import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/video_landscape_screen.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  double playedMinutes = 5.25; //(5:15)
  double totalMinutes = 15.25;
  @override
  Widget build(BuildContext context) {
    double screewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/vdoimg.png',
              width: screewidth,
              fit: BoxFit.cover,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  'IA for Complex Systems',
                  style: GoogleFonts.nunito(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFFFFFFFF)),
                )),
            Positioned(
              bottom: 3,
              left: 12,
              right: 10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "5:15",
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2.5),
                          ),
                        ),
                        Container(
                          height: 5,
                          width: (playedMinutes / totalMinutes) * screewidth,
                          decoration: BoxDecoration(
                            color: const Color(0xff414eca),
                            borderRadius: BorderRadius.circular(2.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "15:15",
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const VideoLandscapeScreen()));
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
