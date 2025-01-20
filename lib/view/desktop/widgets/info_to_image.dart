import 'package:flutter/material.dart';

import '../../../core/widgets/project_image_card.dart';
import '../../../core/widgets/project_info_card.dart';
import '../../../model/project_model.dart';

class InfoToImage extends StatelessWidget {
  const InfoToImage({
    Key? key,
    required this.project,
    required this.width,
  }) : super(key: key);
  final ProjectModel project;
  final double width;

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
                color: Color(0xFF1f2937),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
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
            )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF374151),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: ProjectImageCard(
                image: project.image!,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
