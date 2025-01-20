import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/drawer_nav.dart';
import 'package:portfolio/view/mobile/pages/aboutme_page.dart';
import 'package:portfolio/view/mobile/pages/mobile_home.dart';
import '../../../core/widgets/contact_me.dart';
import '../../../core/widgets/logo.dart';
import '../../mobile/pages/Projects_mobile.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Logo(width: width),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DrawerNav(width: width)
                ],
              ),
            ),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    HomeBody(width: width, imageScale: 0.5),
                    AboutmePage(
                      imageScale: 0.5,
                    ),
                    ProjectsMobile(width: width),
                    ContactMe(width: width)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
