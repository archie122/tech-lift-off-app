import 'package:flutter/material.dart';
import 'package:text_guardian/components/notification.dart';
import 'package:text_guardian/components/navbar.dart';
import 'package:text_guardian/components/main_button.dart';
import 'package:text_guardian/components/textbox.dart';
import 'package:text_guardian/functions/scam_detector.dart';
import 'package:text_guardian/pages/results.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
    final name = _nameController.text;
    final message = _messageController.text;

    final isSuspicious = ScamLinkDetector.isSuspicious(message, name);

    // Debug prints
    print('Is Suspicious: $isSuspicious');
    print('Message: $message');
    print('Name: $name');

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Results(isSuspicious: isSuspicious)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('H O M E P A G E'),
      ),
      drawer: Navbar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 80),
                const Text(
                  'Welcome Back John! Here is how many texts were scanned today!',
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
                Button(onPressed: _analyzeText),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
