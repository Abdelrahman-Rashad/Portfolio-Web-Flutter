import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/styles/string_styles.dart';

import '../strings/string.dart';
import 'brief_on_myself.dart';
import 'page_name.dart';

final contactMePage = GlobalKey();

class ContactMe extends StatelessWidget {
  const ContactMe({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: contactMePage,
      width: double.infinity,
      color: Color(0xFF111827),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PageName(width: width, name: "Get in touch"),
            Text(
              """What’s next? Feel free to reach out to me if you're looking for a developer, have a query, or simply want to connect.""",
              textAlign: TextAlign.center,
              style: StringStyles.font20(width),
            ),
            ContactInfoStructure(
              width: width,
              contact: Strings.gmail,
              icon: Icons.email_outlined,
            ),
            ContactInfoStructure(
              width: width,
              contact: Strings.phone,
              icon: Icons.phone_outlined,
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.sizeOf(context).width * 0.04),
              child: Text(
                "You may also find me on these platforms!",
                style: StringStyles.font16gray(width),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: SocialMediaPlatforms,
            )
          ],
        ),
      ),
    );
  }
}

class ContactInfoStructure extends StatelessWidget {
  const ContactInfoStructure({
    Key? key,
    required this.width,
    required this.icon,
    required this.contact,
  }) : super(key: key);

  final double width;
  final IconData icon;
  final String contact;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              contact,
              style: StringStyles.font20semibold(width),
            ),
          ),
          IconButton(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: contact));
              },
              icon: FaIcon(FontAwesomeIcons.copy))
        ],
      ),
    );
  }
}
