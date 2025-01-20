import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/contact_me.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/strings/string.dart';
import '../../../core/styles/string_styles.dart';
import '../pages/desktop_layout.dart';

class NavListItems extends StatelessWidget {
  const NavListItems({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              Scrollable.ensureVisible(aboutmeKeyDesktop.currentContext!,
                  duration: Duration(seconds: 1));
            },
            child: Text(
              "About",
              style: StringStyles.font16semibold(width),
            )),
        TextButton(
            onPressed: () {
              Scrollable.ensureVisible(projectsKeyDesktop.currentContext!,
                  duration: Duration(seconds: 2));
            },
            child: Text(
              "Projects",
              style: StringStyles.font16semibold(width),
            )),
        TextButton(
            onPressed: () {
              Scrollable.ensureVisible(contactMePage.currentContext!,
                  duration: Duration(seconds: 3));
            },
            child: Text(
              "contact",
              style: StringStyles.font16semibold(width),
            )),
        ElevatedButton(
          onPressed: () async {
            final Uri uri = Uri.parse(Strings.CV); // Parse the URL
            await launchUrl(uri, mode: LaunchMode.externalApplication);
          },
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.purple)),
          child: Text(
            "Download CV",
            style: StringStyles.font16gray(width),
          ),
        )
      ],
    );
  }
}
