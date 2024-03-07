// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class OnboardingScreen extends StatefulWidget {
//   @override
//    _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   late VideoPlayerController _controller;
//   bool _isPlaying = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset('assets/video/video.mp4')
//       ..initialize().then((_) {
//         setState(() {
//           _controller.play();
//           _isPlaying = true;
//         });
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           _buildVideoBackground(),
//           _buildTextOverlay(),
//         ],
//       ),
//     );
//   }

//   Widget _buildVideoBackground() {
//     return _isPlaying
//         ? SizedBox.expand(
//             child: FittedBox(
//               fit: BoxFit.cover,
//               child: SizedBox(
//                 width: _controller.value.size.width,
//                 height: _controller.value.size.height,
//                 child: VideoPlayer(_controller),
//               ),
//             ),
//           )
//         : Container();
//   }

//   Widget _buildTextOverlay() {
//     return Container(
//       padding: EdgeInsets.all(20.0),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Your animated text widgets here
//             Text(
//               'Your animated text here',
//               style: TextStyle(
//                 fontSize: 24.0,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
