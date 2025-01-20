import 'package:flutter/material.dart';

import '../styles/string_styles.dart';

class PageName extends StatelessWidget {
  const PageName({
    Key? key,
    required this.width,
    required this.name,
  }) : super(key: key);

  final double width;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        decoration: ShapeDecoration(
          color: Color(0xFF374151),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Text(
            name,
            style: StringStyles.font14(width),
          ),
        ),
      ),
    );
  }
}
