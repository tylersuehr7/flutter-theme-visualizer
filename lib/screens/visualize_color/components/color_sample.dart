import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show Clipboard, ClipboardData;
import 'package:theme_visualizer/utils/color_extensions.dart';

class ColorSample extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;
  final EdgeInsets margin;

  const ColorSample(this.label, {
    required this.backgroundColor,
    required this.foregroundColor,
    this.margin = EdgeInsets.zero,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle textColor = TextStyle(color: foregroundColor, fontSize: 12.0);

    final String backgroundHexStr = backgroundColor.asHexString;
    final String foregroundHexStr = foregroundColor.asHexString;

    final Icon copyIcon = Icon(Icons.copy, size: 16.0, color: foregroundColor);

    return Container(
      margin: margin,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: textColor.copyWith(fontSize: 18.0, fontWeight: FontWeight.bold)),
          const Spacer(),
          ListTile(
            dense: true,
            title: Text("Background: $backgroundHexStr", style: textColor),
            leading: copyIcon,
            onTap: () async {
              await Clipboard.setData(ClipboardData(text: backgroundHexStr));
              if (context.mounted) {
                const SnackBar snack = SnackBar(
                  content: Text("Copied background color to clipboard!"),
                  duration: Duration(milliseconds: 800),
                );
                ScaffoldMessenger.of(context).showSnackBar(snack);
              }
            },
          ),
          ListTile(
            dense: true,
            title: Text("Foreground: $foregroundHexStr", style: textColor),
            leading: copyIcon,
            onTap: () async {
              await Clipboard.setData(ClipboardData(text: foregroundHexStr));
              if (context.mounted) {
                const SnackBar snack = SnackBar(
                  content: Text("Copied foreground color to clipboard!"),
                  duration: Duration(milliseconds: 800),
                );
                ScaffoldMessenger.of(context).showSnackBar(snack);
              }
            },
          ),
        ],
      )
    );
  }
}