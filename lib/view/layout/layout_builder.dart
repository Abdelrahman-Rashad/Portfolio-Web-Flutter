import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/logo.dart';
import 'package:portfolio/view/desktop/pages/desktop_layout.dart';
import 'package:portfolio/view/mobile/pages/mobile_home.dart';
import 'package:portfolio/view/tablet/pages/tablet_layout.dart';

import '../../core/widgets/drawer_widget.dart';

class LayoutBuilderPlatform extends StatefulWidget {
  const LayoutBuilderPlatform({super.key});

  @override
  State<LayoutBuilderPlatform> createState() => _LayoutBuilderPlatformState();
}

class _LayoutBuilderPlatformState extends State<LayoutBuilderPlatform> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: width < 600 ? AppBar(title: Logo(width: width)) : null,
      endDrawer: DrawerWidget(),
      body: LayoutBuilder(builder: (context, constrains) {
        if (constrains.maxWidth < 600) {
          return MobileHomeLayout();
        } else if (constrains.maxWidth < 900) {
          if (Scaffold.of(context).isEndDrawerOpen) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              setState(() {
                Navigator.pop(context);
              });
            });
          }
          return TabletLayout();
        } else {
          if (Scaffold.of(context).isEndDrawerOpen) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              setState(() {
                Navigator.pop(context);
              });
            });
          }
          return DesktapLayout();
        }
      }),
    );
  }
}
