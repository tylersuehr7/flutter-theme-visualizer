import 'package:flutter/material.dart';

import 'color_sample.dart';

class ColorSchemePalette extends StatelessWidget {
  final ColorScheme colorScheme;

  const ColorSchemePalette(this.colorScheme, {super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final int crossAxisCount;
    if (screenWidth >= 1650.0) {
      crossAxisCount = 4;
    } else if (screenWidth >= 1000.0) {
      crossAxisCount = 3;
    } else if (screenWidth >= 650.0) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 1;
    }

    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      crossAxisCount: crossAxisCount,
      childAspectRatio: 2.3,
      shrinkWrap: true,
      children: <Widget>[
        ColorSample(
          "Primary",
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
        ),
        ColorSample(
          "Primary Container",
          backgroundColor: colorScheme.primaryContainer,
          foregroundColor: colorScheme.onPrimaryContainer,
        ),
        ColorSample(
          "Secondary",
          backgroundColor: colorScheme.secondary,
          foregroundColor: colorScheme.onSecondary,
        ),
        ColorSample(
          "Secondary Container",
          backgroundColor: colorScheme.secondaryContainer,
          foregroundColor: colorScheme.onSecondaryContainer,
        ),
        ColorSample(
          "Tertiary",
          backgroundColor: colorScheme.tertiary,
          foregroundColor: colorScheme.onTertiary,
        ),
        ColorSample(
          "Tertiary Container",
          backgroundColor: colorScheme.tertiaryContainer,
          foregroundColor: colorScheme.onTertiaryContainer,
        ),
        ColorSample(
          "Background",
          backgroundColor: colorScheme.background,
          foregroundColor: colorScheme.onBackground,
        ),
        ColorSample(
          "Surface",
          backgroundColor: colorScheme.surface,
          foregroundColor: colorScheme.onSurface,
        ),
        ColorSample(
          "Surface Variant",
          backgroundColor: colorScheme.surfaceVariant,
          foregroundColor: colorScheme.onSurfaceVariant,
        ),
        ColorSample(
          "Inverse Surface",
          backgroundColor: colorScheme.inverseSurface,
          foregroundColor: colorScheme.onInverseSurface,
        ),
        ColorSample(
          "Outline",
          backgroundColor: colorScheme.outline,
          foregroundColor: Colors.white,
        ),
        ColorSample(
          "Outline Variant",
          backgroundColor: colorScheme.outlineVariant,
          foregroundColor: Colors.black,
        ),
        ColorSample(
          "Error",
          backgroundColor: colorScheme.error,
          foregroundColor: colorScheme.onError,
        ),
        ColorSample(
          "Error Container",
          backgroundColor: colorScheme.errorContainer,
          foregroundColor: colorScheme.onErrorContainer,
        ),
      ],
    );
  }
}