import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_visualizer/managers/theme_manager.dart';

import '../modals/color_seed_chooser_modal.dart';

class DashboardColorSwitcher extends StatelessWidget {
  const DashboardColorSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeManager, ThemeData>(
      builder: (context, theme) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: FilledButton.icon(
            onPressed: () {
              final ThemeManager manager = context.read<ThemeManager>();
              showModalBottomSheet(
                context: context,
                builder: (context) => ColorSeedChooserModal(
                  onChangeSeedColor: manager.changeSeedColor,
                ),
                isScrollControlled: true,
              );
            },
            icon: const Icon(Icons.edit_outlined),
            label: const Text("Change Color Theme"),
          ),
        );
      },
    );
  }
}
