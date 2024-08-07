import 'package:flutter/material.dart';
import 'package:text_guardian/components/navbar.dart';
import 'package:text_guardian/components/textbox.dart';
import 'package:text_guardian/components/main_button.dart';
import 'package:text_guardian/functions/scam_detector.dart';
import 'package:text_guardian/pages/results.dart';
import 'package:text_guardian/components/notification.dart';
import 'package:text_guardian/components/alert_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    Noti.initialize(flutterLocalNotificationsPlugin);
  }

  void _analyzeText() {
    final name = _nameController.text.trim();
    final message = _messageController.text.trim();

    // Check if either field is empty
    if (name.isEmpty || message.isEmpty) {
      // Show an alert dialog
      showDialog(
        context: context,
        builder: (context) => AlertBox(),
      );

      return;
    }

    final isSuspicious = ScamLinkDetector.isSuspicious(message, name);

    // Debug prints
    print('Is Suspicious: $isSuspicious');
    print('Message: $message');
    print('Name: $name');

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Results(isSuspicious: isSuspicious),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('H O M E P A G E', style: TextStyle(letterSpacing: 1.5)),
      ),
      drawer: Navbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Text(
              'Welcome Back! Here’s how many texts were scanned today:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 7, 151, 60),
              ),
            ),
            const SizedBox(height: 20),
            Textbox(
              nameController: _nameController,
              messageController: _messageController,
            ),
            const SizedBox(height: 20),
            Button(onPressed: _analyzeText),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
