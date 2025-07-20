import 'package:flutter/material.dart';
import 'package:portfolio/core/strings/string.dart';

import '../../../core/widgets/custom_video.dart';
import '../../../core/widgets/project_info_card.dart';
import '../../../model/project_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoToInfo extends StatelessWidget {
  final ProjectModel project;
  final double width;

  VideoToInfo({super.key, required this.project, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF374151),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: CustomVideo(
                  videoId: Strings.quillVideoID,
                ),
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF1f2937),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: ProjectInfoCard(
                  url: project.url!,
                  width: width,
                  description: project.description!,
                  name: project.name!,
                  tech: project.tech!,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
