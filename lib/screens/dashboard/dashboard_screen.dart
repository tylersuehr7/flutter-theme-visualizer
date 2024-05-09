import 'package:flutter/material.dart';

import 'components/dashboard_button_bar.dart';
import 'components/dashboard_color_switcher.dart';
import 'components/dashboard_text_theme_switcher.dart';

class DashboardScreen extends StatelessWidget {
  static final String screenName = (DashboardScreen).toString();

  static Route get route => MaterialPageRoute(
    settings: RouteSettings(name: screenName),
    builder: (context) => const DashboardScreen(),
  );

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Theme Visualizer")),
      body: const Column(
        children: [
          Spacer(),
          DashboardButtonBar(),
          Spacer(),
          DashboardColorSwitcher(),
          DashboardTextThemeSwitcher(),
        ],
      ),
    );
  }
}
