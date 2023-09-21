import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text("Settings"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.settings,
              color: Colors.indigoAccent,
              size: 100,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Settings",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 12,
            ),
            MaterialButton(
              color: Colors.indigoAccent,
              onPressed: () {
                context.goNamed("subSettings");
              },
              child: const Text(
                "Navigation To Sub Settings View",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
