import 'package:flutter/material.dart';
import 'package:theme_visualizer/utils/color_extensions.dart';

class TextStyleDetailsModal extends StatelessWidget {
  final TextStyle textStyle;

  const TextStyleDetailsModal({
    required this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> listViewChildren = [];

    final ThemeData theme = Theme.of(context);

    listViewChildren.add(Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Text(
        textStyle.fontFamily ?? "Default",
        style: textStyle.copyWith(color: theme.colorScheme.onSurfaceVariant),
        textAlign: TextAlign.center,
      ),
    ));

    if (textStyle.fontFamily != null) {
      listViewChildren.add(ListTile(
        dense: true,
        title: const Text("Font Family"),
        subtitle: Text(textStyle.fontFamily!),
      ));
    }

    if (textStyle.fontSize != null) {
      listViewChildren.add(ListTile(
        dense: true,
        title: const Text("Font Size"),
        subtitle: Text(textStyle.fontSize!.toString()),
      ));
    }

    if (textStyle.wordSpacing != null) {
      listViewChildren.add(ListTile(
        dense: true,
        title: const Text("Word Spacing"),
        subtitle: Text(textStyle.wordSpacing!.toString()),
      ));
    }

    if (textStyle.letterSpacing != null) {
      listViewChildren.add(ListTile(
        dense: true,
        title: const Text("Letter Spacing"),
        subtitle: Text(textStyle.letterSpacing!.toString()),
      ));
    }

    if (textStyle.fontWeight != null) {
      listViewChildren.add(ListTile(
        dense: true,
        title: const Text("Font Weight"),
        subtitle: Text(textStyle.fontWeight!.toString()),
      ));
    }

    if (textStyle.fontStyle != null) {
      listViewChildren.add(ListTile(
        dense: true,
        title: const Text("Font Style"),
        subtitle: Text(textStyle.fontStyle!.toString()),
      ));
    }

    if (textStyle.color != null) {
      listViewChildren.add(ListTile(
        dense: true,
        title: const Text("Default Color"),
        subtitle: Text(textStyle.color!.asHexString),
      ));
    }

    if (textStyle.backgroundColor != null) {
      listViewChildren.add(ListTile(
        dense: true,
        title: const Text("Default Background Color"),
        subtitle: Text(textStyle.backgroundColor!.asHexString),
      ));
    }

    if (textStyle.debugLabel != null) {
      listViewChildren.add(ListTile(
        dense: true,
        title: const Text("Debug Label"),
        subtitle: Text(textStyle.debugLabel!),
      ));
    }

    return SingleChildScrollView(
      child: ListBody(
        children: listViewChildren,
      ),
    );
  }
}
