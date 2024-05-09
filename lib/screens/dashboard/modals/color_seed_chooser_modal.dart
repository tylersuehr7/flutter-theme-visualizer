import 'package:flutter/material.dart';
import 'package:theme_visualizer/design/colors.dart';

class ColorSeedChooserModal extends StatelessWidget {
  final Function(Color seedColor) onChangeSeedColor;
  final double colorSampleSize;

  const ColorSeedChooserModal({
    required this.onChangeSeedColor,
    this.colorSampleSize = 24.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    void onColorButtonTap(final Color color) {
      Navigator.of(context).pop();
      onChangeSeedColor(color);
    }

    return SingleChildScrollView(
      primary: false,
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                IconButton(onPressed: Navigator.of(context).pop, icon: const Icon(Icons.close)),
                Text("Choose a Color", style: theme.textTheme.titleMedium),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: GridView.count(
                primary: false,
                shrinkWrap: true,
                crossAxisCount: 8,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.4,
                children: [
                  _ColorSeedButton(Colors.red, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.orange, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.amber, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.yellow, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.green, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.teal, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.cyan, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.blue, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.lightBlue, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.indigo, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.deepPurple, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.purple, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.pink, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.blueGrey, onTap: onColorButtonTap),
                  _ColorSeedButton(Colors.grey, onTap: onColorButtonTap),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: GridView.count(
                primary: false,
                shrinkWrap: true,
                crossAxisCount: 8,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.4,
                children: [
                  _ColorSeedButton(shamrockGreen, onTap: onColorButtonTap, semantics: "Shamrock Green"),
                  _ColorSeedButton(amaranth, onTap: onColorButtonTap, semantics: "Amaranth"),
                  _ColorSeedButton(cerulean, onTap: onColorButtonTap, semantics: "Cerulean"),
                  _ColorSeedButton(azul, onTap: onColorButtonTap, semantics: "Azul"),
                  _ColorSeedButton(caribbeanCurrent, onTap: onColorButtonTap, semantics: "Caribbean Current"),
                  _ColorSeedButton(persianGreen, onTap: onColorButtonTap, semantics: "Persian Green"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorSeedButton extends StatelessWidget {
  final Color color;
  final double size;
  final String? semantics;
  final Function(Color) onTap;

  const _ColorSeedButton(this.color, {
    required this.onTap,
    this.size = 24.0,
    this.semantics,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(color),
      onLongPress: () {
        if (semantics != null) {
          final SnackBar snack = SnackBar(content: Text(semantics!), duration: const Duration(milliseconds: 600));
          ScaffoldMessenger.of(context).showSnackBar(snack);
        }
      },
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        ),
      ),
    );
  }
}
