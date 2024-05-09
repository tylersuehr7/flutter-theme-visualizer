import 'package:flutter/material.dart';

import '../../visualize_color/color_scheme_screen.dart';
import '../../visualize_components/components_screen.dart';
import '../../visualize_examples/example_chooser_screen.dart';
import '../../visualize_typography/typography_screen.dart.dart';

class DashboardButtonBar extends StatelessWidget {
  const DashboardButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        OutlinedButton.icon(
          onPressed: () => Navigator.of(context).push(ColorSchemeScreen.route),
          icon: const Icon(Icons.color_lens_outlined),
          label: const Text("Colors"),
        ),
        const SizedBox(width: 8.0, height: 8.0),
        OutlinedButton.icon(
          onPressed: () => Navigator.of(context).push(TypographyScreen.route),
          icon: const Icon(Icons.type_specimen_outlined),
          label: const Text("Typography"),
        ),
        const SizedBox(width: 8.0, height: 8.0),
        OutlinedButton.icon(
          onPressed: () => Navigator.of(context).push(ComponentsScreen.route),
          icon: const Icon(Icons.widgets_outlined),
          label: const Text("Components"),
        ),
        const SizedBox(width: 8.0, height: 8.0),
        OutlinedButton.icon(
          onPressed: () => Navigator.of(context).push(ExampleChooserScreen.route),
          icon: const Icon(Icons.photo_library_outlined),
          label: const Text("Examples"),
        ),
      ],
    );
  }
}
