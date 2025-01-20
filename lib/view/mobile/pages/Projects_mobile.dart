import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controller/fetch_project_data.dart';
import '../../../core/styles/string_styles.dart';
import '../../../core/widgets/page_name.dart';
import '../widgets/image_above_info.dart';

final projectsPageMobile = GlobalKey();

class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      key: projectsPageMobile,
      children: [
        PageName(name: "Projects", width: width),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Some of the noteworthy projects I have built:",
            style: StringStyles.font20(width),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Consumer(
            builder: (context, ref, child) {
              final projects = ref.watch(projectsProvider);

              return projects.when(
                data: (projects) {
                  //return ImageAboveInfo(width: width);

                  return ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: projects
                        .map((item) =>
                            ImageAboveInfo(width: width, project: item))
                        .toList(),
                  );
                },
                error: (error, stackTrace) {
                  return Center(child: Text("Error"));
                },
                loading: () => Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
