import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pd/screens/module_video_screen.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class VideoLandscapeScreen extends StatefulWidget {
  const VideoLandscapeScreen({super.key});

  @override
  State<VideoLandscapeScreen> createState() => _VideoLandscapeScreenState();
}

class _VideoLandscapeScreenState extends State<VideoLandscapeScreen>
    with WidgetsBindingObserver {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

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

    // Remove the landscape lock from here
  }

  @override
  void dispose() {
    flickManager.dispose();
    WidgetsBinding.instance.removeObserver(this);
    _restoreOrientation(); // Ensure orientation is restored when leaving
    super.dispose();
  }

  // Method to set landscape orientation
  Future<void> _setLandscapeMode() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  // Method to restore orientation to normal
  Future<void> _restoreOrientation() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Center(
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: isMobile ? 16 / 10 : 16 / 8,
              child: FlickVideoPlayer(
                flickManager: flickManager,
                flickVideoWithControls: FlickVideoWithControls(
                  controls: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const FlickCurrentPosition(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: FlickVideoProgressBar(
                              flickProgressBarSettings:
                                  FlickProgressBarSettings(
                                playedColor: const Color(0xff414eca),
                                handleColor: Colors.black,
                                height: 5,
                                backgroundColor: Colors.white,
                                bufferedColor: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const FlickTotalDuration(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          FlickSoundToggle(
                            color: Colors.white,
                            size: isMobile ? 12 : 15,
                          ),
                          isMobile
                              ? IconButton(
                                  onPressed: () async {
                                    // Call set landscape mode only when flipping
                                    await _setLandscapeMode();
                                  },
                                  icon: const Icon(
                                    Icons.flip_camera_android,
                                    color: Colors.white,
                                  ),
                                )
                              : IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            const ModuleVideoScreen(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
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
                                    Icons.fullscreen_exit,
                                    color: Colors.white,
                                  ),
                                )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Video title and back button
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const ModuleVideoScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  Text(
                    'IA for Complex Systems',
                    style: GoogleFonts.nunito(
                      fontSize: isMobile ? 16 : 24,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFFFFFFFF),
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
