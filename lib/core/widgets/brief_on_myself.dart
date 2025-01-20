import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/strings/string.dart';
import 'package:url_launcher/url_launcher.dart';

import '../styles/string_styles.dart';

class BriefOnMyself extends StatelessWidget {
  const BriefOnMyself({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Hi, I\'m ',
                style: width < 600
                    ? StringStyles.font36(width)
                    : StringStyles.font60(width),
              ),
              TextSpan(
                text: 'Rashad',
                style: width < 600
                    ? StringStyles.font36purple(width)
                    : StringStyles.font60purple(width),
              ),
              TextSpan(
                text: ' 👋',
                style: width < 600
                    ? StringStyles.font36(width)
                    : StringStyles.font60(width),
              ),
            ],
          ),
        ),
        Text(
          "Passionate Flutter Developer with hands-on experience in building scalable mobile applications using Flutter, State management, and Clean Architecture. Skilled in state management tools like cubit and GetX, with expertise in integrating APIs, payment systems, and AI models. Eager to contribute to innovative projects and deliver user-centric solutions.",
          style: StringStyles.font16(width),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 45.0),
          child: IntrinsicHeight(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(size: 25, Icons.location_on_outlined),
                    Icon(
                      Icons.circle,
                      size: 15,
                      color: Colors.green,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cairo, Egypt",
                      style: StringStyles.font16(width),
                    ),
                    Text(
                      "Available for work",
                      style: StringStyles.font16(width),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
          children: SocialMediaPlatforms,
        ),
      ],
    );
  }
}

List<Widget> get SocialMediaPlatforms {
  return [
    IconButton(
        onPressed: () async {
          final Uri uri = Uri.parse(Strings.github); // Parse the URL
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        },
        icon: FaIcon(FontAwesomeIcons.github)),
    IconButton(
        onPressed: () async {
          final Uri uri = Uri.parse(Strings.linkedin); // Parse the URL
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        },
        icon: FaIcon(FontAwesomeIcons.linkedin)),
    IconButton(
        onPressed: () async {
          final Uri uri = Uri.parse(Strings.behance); // Parse the URL
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        },
        icon: FaIcon(FontAwesomeIcons.behance)),
  ];
}
