// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portfolio/core/widgets/page_name.dart';

import '../../../core/widgets/about_me.dart';

final aboutmePageMobile = GlobalKey();

class AboutmePage extends StatelessWidget {
  const AboutmePage({
    Key? key,
    required this.imageScale,
  }) : super(key: key);
  final double imageScale;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      key: aboutmePageMobile,
      child: IntrinsicHeight(
        child: Container(
          width: double.infinity,
          color: Color(0xFF111827),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Column(
              children: [
                PageName(width: width, name: "About me"),
                SizedBox(
                  height: width * imageScale,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    "assets/images/Group.png",
                  ),
                ),
                Expanded(child: AboutMe(width: width)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
