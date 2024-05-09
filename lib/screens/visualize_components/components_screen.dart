import 'package:flutter/material.dart';

import 'components/components_list_sampler.dart';

class ComponentsScreen extends StatelessWidget {
  static final String screenName = (ComponentsScreen).toString();

  static Route get route => MaterialPageRoute(
    settings: RouteSettings(name: screenName),
    builder: (context) => const ComponentsScreen(),
  );

  const ComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Components")),
      body: const SafeArea(
        child: ComponentsListSampler(),
      ),
    );
  }
}
