import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:text_guardian/components/navbar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('S E T T I N G S')),
      drawer: Navbar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('Message Filtering'),
                    subtitle: Text('Used for text filtering'),
                  ),
                  ListTile(
                    title: Text('Sender Filtering Options',
                        style: TextStyle(fontSize: 14)),
                  ),
                  ListTile(
                    title: Text('Keyword or Phrase Filtering Options:',
                        style: TextStyle(fontSize: 14)),
                  ),
                  ListTile(
                    title: Text('Link or Attachment Filtering Options:',
                        style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('Two-Factor Authentication'),
                    subtitle: Text('Used for two-factor authentication'),
                  ),
                  ListTile(
                    title: Text('Verification Methods',
                        style: TextStyle(fontSize: 14)),
                  ),
                  ListTile(
                    title: Text('Device Recognition:',
                        style: TextStyle(fontSize: 14)),
                  ),
                  ListTile(
                    title: Text('Backup Authentication Methods:',
                        style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('Message Reporting'),
                    subtitle: Text('Used for reporting messages'),
                  ),
                  ListTile(
                    title: Text('Reporting Features:',
                        style: TextStyle(fontSize: 14)),
                  ),
                  ListTile(
                    title: Text('Reporting Categories:',
                        style: TextStyle(fontSize: 14)),
                  ),
                  ListTile(
                    title: Text('Anonymity Options:',
                        style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('Message Blocking'),
                    subtitle: Text('Used for blocking'),
                  ),
                  ListTile(
                    title: Text('Blocking Options',
                        style: TextStyle(fontSize: 14)),
                  ),
                  ListTile(
                    title: Text('Reporting to Authorities:',
                        style: TextStyle(fontSize: 14)),
                  ),
                  ListTile(
                    title: Text('Automatic Blocking:',
                        style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
