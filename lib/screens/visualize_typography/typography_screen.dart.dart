import 'package:flutter/material.dart';

import 'components/text_style_list_item.dart';

class TypographyScreen extends StatelessWidget {
  static final String screenName = (TypographyScreen).toString();

  static Route get route => MaterialPageRoute(
    settings: RouteSettings(name: screenName),
    builder: (context) => const TypographyScreen(),
  );

  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return  Scaffold(
      appBar: AppBar(title: const Text("Typography")),
      body: SafeArea(
        child: ListView(
          children: [
            TextStyleListItem("Display Large", textStyle: textTheme.displayLarge!),
            TextStyleListItem("Display Medium", textStyle: textTheme.displayMedium!),
            TextStyleListItem("Display Small", textStyle: textTheme.displaySmall!),
            const Divider(),
            TextStyleListItem("Headline Large", textStyle: textTheme.headlineLarge!),
            TextStyleListItem("Headline Medium", textStyle: textTheme.headlineMedium!),
            TextStyleListItem("Headline Small", textStyle: textTheme.headlineSmall!),
            const Divider(),
            TextStyleListItem("Title Large", textStyle: textTheme.titleLarge!),
            TextStyleListItem("Title Medium", textStyle: textTheme.titleMedium!),
            TextStyleListItem("Title Small", textStyle: textTheme.titleSmall!),
            const Divider(),
            TextStyleListItem("Body Large", textStyle: textTheme.bodyLarge!),
            TextStyleListItem("Body Medium", textStyle: textTheme.bodyMedium!),
            TextStyleListItem("Body Small", textStyle: textTheme.bodySmall!),
            const Divider(),
            TextStyleListItem("Label Large", textStyle: textTheme.labelLarge!),
            TextStyleListItem("Label Medium", textStyle: textTheme.labelMedium!),
            TextStyleListItem("Label Small", textStyle: textTheme.labelSmall!),
          ],
        ),
      ),
    );
  }
}
