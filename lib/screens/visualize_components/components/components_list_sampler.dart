import 'package:flutter/material.dart';

class ComponentsListSampler extends StatelessWidget {
  const ComponentsListSampler({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 40.0),
      children: [

        ElevatedButton(onPressed: () {}, child: const Text("Click Me")),
        const SizedBox(height: 4.0),
        FilledButton(onPressed: () {}, child: const Text("Click Me")),
        const SizedBox(height: 4.0),
        FilledButton.tonal(onPressed: () {}, child: const Text("Click Me")),
        const SizedBox(height: 4.0),
        OutlinedButton(onPressed: () {}, child: const Text("Click Me")),
        const SizedBox(height: 4.0),
        TextButton(onPressed: () {}, child: const Text("Click Me")),

        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Divider(),
        ),

        Column(
          children: [
            FloatingActionButton.small(
              onPressed: () {},
              heroTag: "_1",
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10.0),
            FloatingActionButton.large(
              onPressed: () {},
              heroTag: "_2",
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10.0),
            FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Test"),
              heroTag: "_3",
            ),
          ],
        ),

        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Divider(),
        ),

        const TextField(
          decoration: InputDecoration(
            hintText: "Sample input field…",
            helperText: "This is for demo purposes only",
          ),
        ),
        const SizedBox(height: 10.0),
        const TextField(
          decoration: InputDecoration(
            hintText: "Sample input field with error…",
            helperText: "This is for demo purposes only",
            errorText: "Invalid input!",
          ),
        ),
        const SizedBox(height: 10.0),
        const TextField(
          minLines: 4,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "Sample input area…",
            helperText: "This is for demo purposes only",
          ),
        ),
        const SizedBox(height: 10.0),
        DropdownButtonFormField<String>(
          items: const [
            DropdownMenuItem(value: "A", child: Text("A")),
            DropdownMenuItem(value: "B", child: Text("B")),
            DropdownMenuItem(value: "C", child: Text("C")),
          ],
          onChanged: (value) {},
          decoration: const InputDecoration(
            hintText: "Choose an item…",
            helperText: "This is for demo purposes only",
          ),
        ),
        const SizedBox(height: 10.0),
        const TextField(
          decoration: InputDecoration(
            isDense: true,
            hintText: "Sample dense input field…",
            helperText: "This is for demo purposes only",
          ),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Divider(),
        ),

        const ListTile(
          title: Text("List item"),
          subtitle: Text("Description of this list item"),
        ),

        SwitchListTile(
          value: true,
          onChanged: (value) {},
          title: const Text("List item switch"),
          subtitle: const Text("Cool right?"),
        ),

        CheckboxListTile(
          value: true,
          onChanged: (value) {},
          title: const Text("List item checkbox"),
          subtitle: const Text("Cool right?"),
        ),

        RadioListTile(
          value: true,
          groupValue: true,
          onChanged: (value) {},
          title: const Text("List item radio"),
          subtitle: const Text("Description of this list item radio"),
        ),

        const AboutListTile(
          applicationName: "Theme Visualizer",
          applicationVersion: "1.0.0",
          applicationLegalese: "A utility for seeing and visualizing designs.",
          child: Text("About"),
        ),

        const ExpansionTile(
          title: Text("Expansion list item"),
          subtitle: Text("Description of this list item"),
          children: [
            Text("Some item 1"),
            Text("Some item 2"),
          ],
        ),

        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Divider(),
        ),

        FilledButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (_) => const _ScaffoldWithPrimaryAppBar(),
          )),
          child: const Text("Primary App Bar"),
        ),

        const SizedBox(height: 4.0),

        FilledButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (_) => const _ScaffoldWithInversePrimaryAppBar(),
          )),
          child: const Text("Inverse Primary App Bar"),
        ),

      ],
    );
  }
}

class _ScaffoldWithInversePrimaryAppBar extends StatelessWidget {
  const _ScaffoldWithInversePrimaryAppBar();

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inverse Primary App Bar"),
        backgroundColor: colorScheme.inversePrimary,
      ),
    );
  }
}

class _ScaffoldWithPrimaryAppBar extends StatelessWidget {
  const _ScaffoldWithPrimaryAppBar();

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primary App Bar"),
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
    );
  }
}
