import 'package:flutter/material.dart';
import 'package:text_guardian/components/navbar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('S E T T I N G S')),
      drawer: Navbar(),
    );
  }
}
