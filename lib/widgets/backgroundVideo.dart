// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class BackgroundVideoWidget extends StatefulWidget {
//   const BackgroundVideoWidget({super.key});
//
//   @override
//   State<BackgroundVideoWidget> createState() => _BackgroundVideoWidgetState();
// }
//
// class _BackgroundVideoWidgetState extends State<BackgroundVideoWidget> {
//   late final VideoPlayerController videoController;
//   @override
//   void initState() {
//     // videoController = VideoPlayerController.networkUrl(Uri("https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4"))
//     //   ..initialize().then((_) {
//     //     videoController.play();
//     //     videoController.setLooping(true);
//     //   });
//
//     super.initState();
//
//     videoController = VideoPlayerController.network(
//         'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4')
//       ..initialize().then((_) {
//         videoController.play();
//         videoController.setLooping(true);
//         // Ensure the first frame is shown after the video is initialized
//         setState(() {});
//       });
//   }
//
//   @override
//   void dispose() {
//     videoController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) => VideoPlayer(videoController);
// }
