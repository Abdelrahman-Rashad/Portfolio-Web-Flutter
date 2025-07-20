// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CustomVideo extends StatelessWidget {
  CustomVideo({
    Key? key,
    required this.videoId,
  }) : super(key: key);
  final String videoId;

  @override
  Widget build(BuildContext context) {
    final controller = YoutubePlayerController.fromVideoId(
      videoId: videoId,
      params: YoutubePlayerParams(
          showControls: true, showFullscreenButton: true, enableCaption: false),
    );
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black54, // shadow color
                blurRadius: 20, // shadow radius
                spreadRadius:
                    0.1, // The amount the box should be inflated prior to applying the blur
                blurStyle: BlurStyle.normal // set blur style

                ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: SizedBox(
            height: 300,
            width: double.infinity,
            child: YoutubePlayerScaffold(
              controller: controller,
              builder: (context, player) {
                return player;
              },
            ),
          ),
        ),
      ),
    );
  }
}
