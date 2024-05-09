import 'package:flutter/cupertino.dart' show CupertinoListTileChevron;
import 'package:flutter/material.dart';
import 'package:theme_visualizer/design/themes.dart';

class TextThemeChooserModal extends StatelessWidget {
  final Function(TextTheme) onChangeTextTheme;

  const TextThemeChooserModal({
    required this.onChangeTextTheme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    void onTextThemeButtonTap(final TextTheme textTheme) {
      Navigator.of(context).pop();
      onChangeTextTheme(textTheme);
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
                Text("Choose a Text Theme", style: theme.textTheme.titleMedium),
              ],
            ),
            ListView(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              children: [
                _TextThemeButton(roboto, onTap: onTextThemeButtonTap, semantics: "Roboto"),
                _TextThemeButton(poppins, onTap: onTextThemeButtonTap, semantics: "Poppins"),
                _TextThemeButton(openSans, onTap: onTextThemeButtonTap, semantics: "Open Sans"),
                _TextThemeButton(workSans, onTap: onTextThemeButtonTap, semantics: "Work Sans"),
                _TextThemeButton(quicksand, onTap: onTextThemeButtonTap, semantics: "Quicksand"),
                _TextThemeButton(libreFranklin, onTap: onTextThemeButtonTap, semantics: "Libre Franklin"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TextThemeButton extends StatelessWidget {
  final TextTheme textTheme;
  final String semantics;
  final Function(TextTheme) onTap;

  const _TextThemeButton(this.textTheme, {
    required this.onTap,
    required this.semantics,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTap(textTheme),
      title: Text(semantics),
      trailing: const CupertinoListTileChevron(),
    );
  }
}
