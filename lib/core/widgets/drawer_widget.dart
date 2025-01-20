import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/logo.dart';
import 'drawer_nav.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(width: width),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close))
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          DrawerNav(width: width),
        ],
      ),
    );
  }
}
