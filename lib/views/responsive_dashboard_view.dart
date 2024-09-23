import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/desktop_layout.dart';

class ResponsiveDashboardView extends StatelessWidget {
  const ResponsiveDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => DesktopLayout()),
    );
  }
}
