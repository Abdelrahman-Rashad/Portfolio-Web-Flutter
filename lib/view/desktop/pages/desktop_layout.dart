// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:portfolio/core/styles/string_styles.dart';
import 'package:portfolio/core/widgets/logo.dart';

import '../../../controller/fetch_project_data.dart';
import '../../../core/widgets/about_me.dart';
import '../../../core/widgets/brief_on_myself.dart';
import '../../../core/widgets/contact_me.dart';
import '../../../core/widgets/page_name.dart';
import '../widgets/image_to_info.dart';
import '../widgets/info_to_image.dart';
import '../widgets/nav_list_items.dart';

final aboutmeKeyDesktop = GlobalKey();
final projectsKeyDesktop = GlobalKey();

class DesktapLayout extends StatelessWidget {
  const DesktapLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Logo(width: width), NavListItems(width: width)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 60),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: BriefOnMyself(width: width),
                ),
                Expanded(
                    flex: 1,
                    child: Image.asset("assets/images/personal_image.png"))
              ],
            ),
          ),
          Container(
            key: aboutmeKeyDesktop,
            width: double.infinity,
            color: Color(0xFF111827),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              child: Column(
                children: [
                  PageName(name: "About me", width: width),
                  Row(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/images/Group.png",
                      )),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Expanded(child: AboutMe(width: width))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            key: projectsKeyDesktop,
            children: [
              PageName(name: "Projects", width: width),
              Text(
                "Some of the noteworthy projects I have built:",
                style: StringStyles.font20(width),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 140, vertical: 30),
                child: Consumer(
                  builder: (context, ref, child) {
                    final projects = ref.watch(projectsProvider);

                    return projects.when(
                      data: (projects) {
                        return Column(
                          children: [
                            ImageToInfo(
                              project: projects[0],
                              width: width,
                            ),
                            InfoToImage(
                              project: projects[1],
                              width: width,
                            ),
                            ImageToInfo(
                              project: projects[2],
                              width: width,
                            ),
                            InfoToImage(
                              project: projects[3],
                              width: width,
                            ),
                          ],
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
          ),
          ContactMe(width: width)
        ],
      ),
    );
  }
}
