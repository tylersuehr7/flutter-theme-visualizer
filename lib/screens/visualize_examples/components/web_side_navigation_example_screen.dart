import 'package:flutter/material.dart';

class WebSideNavigationExampleScreen extends StatelessWidget {
  static final String screenName = (WebSideNavigationExampleScreen).toString();

  static Route get route => MaterialPageRoute(
    settings: RouteSettings(name: screenName),
    builder: (context) => const WebSideNavigationExampleScreen(),
  );

  const WebSideNavigationExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;
    return  Scaffold(
      appBar: AppBar(title: const Text("Side Navigation Example")),
      body: SafeArea(
        child: Row(
          children: [

            Container(
              color: colorScheme.primary,
              width: 48.0,
            ),

            Container(
              color: colorScheme.inverseSurface,
              width: 150.0,
              child: Column(
                children: [
                  ListTile(title: Text("Menu Item 1", style: TextStyle(color: colorScheme.onInverseSurface))),
                  ListTile(title: Text("Menu Item 2", style: TextStyle(color: colorScheme.onInverseSurface))),
                  ListTile(title: Text("Menu Item 3", style: TextStyle(color: colorScheme.onInverseSurface))),
                ],
              ),
            ),

            Container(
                color: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  children: [
                    Text("Page Title", style: textTheme.titleLarge),
                  ],
                )
            ),

          ],
        ),
      ),
    );
  }
}
