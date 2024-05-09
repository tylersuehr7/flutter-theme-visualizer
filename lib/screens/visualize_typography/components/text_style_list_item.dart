import 'package:flutter/cupertino.dart' show CupertinoListTileChevron;
import 'package:flutter/material.dart';

import '../modals/text_style_modal.dart';

class TextStyleListItem extends StatelessWidget {
  final String label;
  final TextStyle textStyle;

  const TextStyleListItem(this.label, {
    required this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label, style: textStyle),
      trailing: const CupertinoListTileChevron(),
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => Material(
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: () => Navigator.of(context).pop(), icon: const Icon(Icons.close)),
                TextStyleDetailsModal(textStyle: textStyle),
              ],
            ),
          )
        );
      }
    );
  }
}
