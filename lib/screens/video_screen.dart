import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/video_landscape_screen.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();

    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset(
        'images/What Is UX Design.mp4', 
      ),
    );

    flickManager.flickVideoManager!.videoPlayerController!.initialize().then((_) {
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
  Widget build(BuildContext context) {
    double screewidth = MediaQuery.of(context).size.width;
    bool isMobile=screewidth<600;

    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Center(
        child: Stack(
          children: [

            AspectRatio(
              aspectRatio: 16/10,
              child: FlickVideoPlayer(
                flickManager: flickManager,
                flickVideoWithControls: FlickVideoWithControls(
                  controls: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Video progress bar similar to ModuleVideoScreen
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Current position
                          const FlickCurrentPosition(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          // Custom progress bar
                          Expanded(
                            child: Stack(
                              children: [
                                FlickVideoProgressBar(
                                  flickProgressBarSettings: FlickProgressBarSettings(
                                    playedColor: const Color(0xff414eca),
                                    handleColor: Colors.black,
                                    height: 5,
                                    backgroundColor: Colors.white,
                                    bufferedColor: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          // Total duration
                          const FlickTotalDuration(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                           FlickSoundToggle(
                                  color: Colors.white,
                                  size: isMobile ? 12 : 15,
                                ),
                          // Switch to landscape mode
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const VideoLandscapeScreen(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.flip_camera_android,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Video title
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'IA for Complex Systems',
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
