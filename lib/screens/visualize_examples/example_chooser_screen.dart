import 'package:flutter/cupertino.dart' show CupertinoListTileChevron;
import 'package:flutter/material.dart';

import 'components/web_side_navigation_example_screen.dart';

class ExampleChooserScreen extends StatelessWidget {
  static final String screenName = (ExampleChooserScreen).toString();

  static Route get route => MaterialPageRoute(
    settings: RouteSettings(name: screenName),
    builder: (context) => const ExampleChooserScreen(),
  );

  const ExampleChooserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Examples")),
      body: SafeArea(
        child: ListView(
          children: [

            ListTile(
              title: const Text("Web Application: Side Navigation Bar"),
              trailing: const CupertinoListTileChevron(),
              onTap: () => Navigator.of(context).push(WebSideNavigationExampleScreen.route),
            ),

          ],
        ),
      ),
    );
  }
}
