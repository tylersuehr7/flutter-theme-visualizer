import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../managers/theme_manager.dart';
import '../screens/dashboard/dashboard_screen.dart';

final GlobalKey<NavigatorState> _navigator = GlobalKey(debugLabel: "ApplicationRoot");

final class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeManager>(
      create: (_) => ThemeManager(),
      child: BlocBuilder<ThemeManager, ThemeData>(
        builder: (context, theme) => MaterialApp(
          title: "Theme Visualizer",
          navigatorKey: _navigator,
          theme: theme,
          home: const DashboardScreen(),
        ),
      ),
    );
  }

  static void run() => runApp(const Application());
}
