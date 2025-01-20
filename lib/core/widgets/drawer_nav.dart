import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/contact_me.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../view/mobile/pages/Projects_mobile.dart';
import '../../view/mobile/pages/aboutme_page.dart';
import '../strings/string.dart';
import '../styles/string_styles.dart';

class DrawerNav extends StatefulWidget {
  const DrawerNav({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<DrawerNav> createState() => _DrawerNavState();
}

class _DrawerNavState extends State<DrawerNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "About",
            style: StringStyles.font16semibold(widget.width),
          ),
          onTap: () {
            if (Scaffold.of(context).isEndDrawerOpen) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() {
                  Navigator.pop(context);
                });
              });
            }
            Scrollable.ensureVisible(aboutmePageMobile.currentContext!,
                duration: Duration(seconds: 1));
          },
        ),
        ListTile(
          title: Text(
            "Projects",
            style: StringStyles.font16semibold(widget.width),
          ),
          onTap: () {
            if (Scaffold.of(context).isEndDrawerOpen) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() {
                  Navigator.pop(context);
                });
              });
            }
            Scrollable.ensureVisible(projectsPageMobile.currentContext!,
                duration: Duration(seconds: 3));
          },
        ),
        ListTile(
          title: Text(
            "Contact",
            style: StringStyles.font16semibold(widget.width),
          ),
          onTap: () {
            if (Scaffold.of(context).isEndDrawerOpen) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() {
                  Navigator.pop(context);
                });
              });
            }
            Scrollable.ensureVisible(contactMePage.currentContext!,
                duration: Duration(seconds: 3));
          },
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: widget.width * 0.5,
            child: ElevatedButton(
              onPressed: () async {
                final Uri uri = Uri.parse(Strings.CV); // Parse the URL
                await launchUrl(uri, mode: LaunchMode.externalApplication);
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.purple)),
              child: Text(
                "Download CV",
                style: StringStyles.font16gray(widget.width),
              ),
            ),
          ),
        )
      ],
    );
  }
}
