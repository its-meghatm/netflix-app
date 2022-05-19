// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:netflix/src/application/fastLaugh/fastlaugh_bloc.dart';
// import 'package:video_player/video_player.dart';

// import '../../application/downloads/downloads_bloc.dart';

// class FastLaughScreen extends StatelessWidget {
//   const FastLaughScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance!.addPersistentFrameCallback((timeStamp) {
//       BlocProvider.of<FastlaughBloc>(context)
//           .add(const FastlaughEvent.started());
//     });
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SizedBox(
//           width: double.infinity,
//           height: MediaQuery.of(context).size.height,
//           child: BlocBuilder<FastlaughBloc, FastlaughState>(
//             builder: (context, state) {
//               if (state.isLoading) {
//                 return Center(
//                     child: CircularProgressIndicator(
//                   strokeWidth: 2,
//                 ));
//               } else if (state.isError) {
//                 return Center(child: Text("error"));
//               } else if (state.videoList.isEmpty) {
//                 return Center(child: Text("There are no videos"));
//               } else {
//                 return PageView.builder(
//                   scrollDirection: Axis.vertical,
//                   itemCount: 4,
//                   itemBuilder: (ctx, index) {
//                     final videoUrl =
//                         dummyVideoUrl[index % dummyVideoUrl.length];
//                     return Stack(
//                       alignment: AlignmentDirectional.bottomEnd,
//                       children: [
//                         FastVideoPlayer(
//                             videoUrl: videoUrl, onStateChanged: (bool) {}),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 10),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               CircleAvatar(
//                                 radius: 25,
//                                 backgroundColor: Colors.white,
//                                 //  backgroundImage: NetworkImage(""),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               icons(
//                                 Icons.emoji_emotions_rounded,
//                                 "50k",
//                               ),
//                               icons(Icons.add, "My List"),
//                               icons(Icons.share, "Share"),
//                               icons(Icons.play_arrow, "Play"),
//                             ],
//                           ),
//                         )
//                       ],
//                     );
//                   },
//                 );
//               }
//             },
//           )),
//     );
//   }

//   Column icons(IconData icons, String title) {
//     return Column(
//       children: [
//         Icon(
//           icons,
//           color: Colors.white,
//         ),
//         Text(
//           title,
//           style: const TextStyle(color: Colors.white),
//         ),
//         const SizedBox(
//           height: 30,
//         )
//       ],
//     );
//   }
// }

// class FastVideoPlayer extends StatefulWidget {
//   final String videoUrl;
//   final void Function(bool isPlaying) onStateChanged;
//   FastVideoPlayer(
//       {Key? key, required this.videoUrl, required this.onStateChanged})
//       : super(key: key);

//   @override
//   State<FastVideoPlayer> createState() => _FastVideoPlayerState();
// }

// class _FastVideoPlayerState extends State<FastVideoPlayer> {
//   late VideoPlayerController _videoPlayerController;

//   @override
//   void initState() {
//     _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
//     _videoPlayerController.initialize().then((value) {
//       setState(() {});
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         height: double.infinity,
//         width: double.infinity,
//         child: _videoPlayerController.value.isPlaying
//             ? VideoPlayer(_videoPlayerController)
//             : Center(
//                 child: CircularProgressIndicator(strokeWidth: 2),
//               ));
//   }
// }
