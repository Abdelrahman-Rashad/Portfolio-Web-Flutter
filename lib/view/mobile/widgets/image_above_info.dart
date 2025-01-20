import 'package:flutter/material.dart';

import '../../../core/widgets/project_image_card.dart';
import '../../../core/widgets/project_info_card.dart';
import '../../../model/project_model.dart';

class ImageAboveInfo extends StatelessWidget {
  const ImageAboveInfo({
    super.key,
    required this.width,
    required this.project,
  });

  final double width;
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntrinsicHeight(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF374151),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: ProjectImageCard(
                    image: project.image!,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF1f2937),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
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
