import 'package:flutter/material.dart';
import 'package:text_guardian/components/navbar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('S E T T I N G S')),
      drawer: Navbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            _buildSettingsCard(
              title: 'Message Reporting',
              subtitle: 'Used for reporting messages',
              options: [
                'Reporting Features:',
                'Reporting Categories:',
                'Anonymity Options:',
              ],
            ),
            const SizedBox(height: 16),
            _buildSettingsCard(
              title: 'Message Blocking',
              subtitle: 'Used for blocking',
              options: [
                'Blocking Options',
                'Reporting to Authorities:',
                'Automatic Blocking:',
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsCard(
      {required String title,
      required String subtitle,
      required List<String> options}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(title,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(subtitle),
          ),
          ...options.map((option) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(option, style: const TextStyle(fontSize: 14)),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                        // ScaffoldMessenger.of().showSnackBar(
                        //   SnackBar(
                        //       content: Text('Button pressed for: $option')),
                        // );
                      },
                      child: const Text('Manage'),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
