import 'package:flutter/widgets.dart';

import '../styles/string_styles.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: '<', style: StringStyles.font30(width)),
          TextSpan(text: 'AR', style: StringStyles.font30purple(width)),
          TextSpan(text: ' />', style: StringStyles.font30(width)),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
