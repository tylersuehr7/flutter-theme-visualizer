import 'package:flutter/material.dart';

import 'components/color_scheme_palette.dart';

class ColorSchemeScreen extends StatelessWidget {
  static final String screenName = (ColorSchemeScreen).toString();

  static Route get route => MaterialPageRoute(
    settings: RouteSettings(name: screenName),
    builder: (context) => const ColorSchemeScreen(),
  );

  const ColorSchemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return  Scaffold(
      appBar: AppBar(title: const Text("Color Scheme")),
      body: SafeArea(
        child: ColorSchemePalette(colorScheme),
      ),
    );
  }
}
