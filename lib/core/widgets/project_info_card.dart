// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../styles/string_styles.dart';

class ProjectInfoCard extends StatelessWidget {
  const ProjectInfoCard({
    super.key,
    required this.name,
    required this.description,
    required this.width,
    required this.tech,
    required this.url,
  });
  final String name;
  final String description;
  final double width;
  final List<dynamic> tech;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: StringStyles.font20semibold(width),
        ),
        Text(
          description,
          style: StringStyles.font16gray(width),
        ),
        SizedBox(
          height: 15,
        ),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: tech.map((item) {
            return Chip(
              label: Text(
                item.toString(),
                style: StringStyles.font14(width),
              ),
              backgroundColor: Color(0xFF374151),
            );
          }).toList(),
        ),
        SizedBox(
          height: 5,
        ),
        IconButton(
            onPressed: () async {
              final Uri uri = Uri.parse(url); // Parse the URL
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            },
            icon: FaIcon(
              FontAwesomeIcons.externalLink,
              size: 20,
            ))
      ],
    );
  }
}
