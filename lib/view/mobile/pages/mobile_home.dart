// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/view/mobile/pages/aboutme_page.dart';

import '../../../core/widgets/brief_on_myself.dart';
import '../../../core/widgets/contact_me.dart';
import 'Projects_mobile.dart';

class MobileHomeLayout extends StatelessWidget {
  const MobileHomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: HomeBody(
              width: width,
              imageScale: 0.75,
            ),
          ),
          AboutmePage(
            imageScale: 0.75,
          ),
          ProjectsMobile(width: width),
          ContactMe(width: width)
        ],
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.width,
    required this.imageScale,
  }) : super(key: key);

  final double width;
  final double imageScale;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          SizedBox(
              height: width * imageScale,
              child: Image.asset("assets/images/personal_image.png")),
          Expanded(child: BriefOnMyself(width: width)),
        ],
      ),
    );
  }
}
