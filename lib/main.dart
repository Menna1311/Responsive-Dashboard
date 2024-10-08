import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/responsive_dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveDashboardView(),
    );
  }
}
